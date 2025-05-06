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



sudo usermod -aG docker $USER                ---permission denied error solved
newgrp docker                                -- Force group changes to apply      
groups                                      -------Verify user all groupnames





# ===== CONTAINERS =====
docker run -d -p HOST:CONTAINER --name <name> <image>  # Run detached + port mapping
docker ps -a                  # List all containers
docker stop <container>       # Stop container
docker rm <container>         # Delete container
docker logs -f <container>    # Tail logs
docker exec -it <container> sh  # Enter shell



# ===== VOLUMES =====
docker volume ls              # List volumes
docker volume rm <volume>     # Delete volume

# ===== NETWORKING =====
docker network ls             # List networks
docker inspect <container> | grep IPAddress  # Get container IP

# ===== SHORTCUTS =====
docker stop $(docker ps -aq)  # Stop ALL containers
docker rm $(docker ps -aq)    # Delete ALL containers


docker network create mynet     # Create bridge network, then only below command work
docker run --network=<network> <image>  # Run container in a network  

-container on same network ping eachother with conr-name no need ip

bridge: Default (isoled containers, internal IPs).
host: Shares host’s network (no isolation, fast).
none: No networking (for security/testing).
overlay: For multi-host Swarm clusters.



- Dockerfile - which layer u change command after that all layers created again before that layer only cached.










