RUN mvn clean package -DskipTests is the preferred choice because it create deployable artifact without  installing it to local Maven repo (~/.m2/repository).



# Multi-stage build for optimized image size

# Build Stage
FROM maven:3.8.6-jdk-11 AS build                                    #  AS    
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Runtime Stage
FROM amazoncorretto:11-alpine
WORKDIR /app

# Copy only the necessary artifact from the build stage
COPY --from=build /app/target/*.jar app.jar                         #  COPY --from=

# Create a non-root user and group
RUN addgroup -S mygroup && adduser -S myuser -G mygroup

# Switch to the non-root user
USER myuser

# Expose the application port
EXPOSE 8080

# Define environment variables (if needed)
ENV SPRING_PROFILES_ACTIVE=prod

# Define the command to run the application
CMD ["java", "-jar", "app.jar"]
