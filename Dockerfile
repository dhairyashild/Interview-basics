CMD == command/args overidable , 
ENTRYPOINT  == fixed command

CMD         == default command/args (e.g. CMD ["java", "-jar", "app.jar"]), overridable at runtime
ENTRYPOINT  == sets a fixed command, treating extra args as parameters to it. 
When would you use ENTRYPOINT over CMD== to always run java -jar app.jar ,ensuring consistency.
What if only CMD is set with java -jar app.jar and you pass a command at runtime?	The runtime command fully replaces the CMD
Can you set multiple ENTRYPOINT instructions for Java in 1 Dockerfile?	No, only the last ENTRYPOINT is used
Give a Dockerfile example using both for Java.	ENTRYPOINT ["java", "-jar"]; CMD ["app.jar"]
ONLY ENTRYPOINT-- IT WILL RUN
ONLY CMD-- IT WILL RUN
BOTH USED == ENTRYPOINT sets main executable (e.g., java -jar), while CMD provides OVERIDABLE arguments 
RUN executes commands at build time to create image layers, while ENTRYPOINT and CMD define what runs in the container at runtime


# COMLPETE DOCKER IN 1 COMMAND
docker run -it -p 8080:8000 -p 80:80 -v /home/ubuntu/app:/app --network=<network> --privileged=true nginx /bin/bash

commit  --
diff
build -t
port 

docker run -d ubuntu sleep infinity

docker run -d -p 80:80 nginx

# VOLUMEMOUNT
docker run -d -v myvol:/app -p HOST:CONTAINER nginx        --- after -v if / not used then its VOLUME-mount but / used like below its called BIND-mount
sudo ls /var/lib/docker/volumes
===  myvol

# BIND MOUNT
docker run -it -v /home/buntu/app:/app nginx /bin/bash

 
######################################################################
EXEC     === ONLY RUN COMMAND K8S+DOCKER
EXEC -IT ==== ENTER IN K8S+DOCKER

# Docker: Run command from outside
docker exec <container-name/id> <command>
docker exec e5 ls

# Docker: Enter inside container (new process)
docker exec -it <container-name/id> /bin/bash            (     /bin/bash         bash       donhi chalate bash la slash nahi)

# Docker: Attach to main process of container
docker attach <container-name-or-id>

# Kubernetes: Run command from outside
kubectl exec <pod-name> -- <command>

# Kubernetes: Enter inside container
kubectl exec -it <pod-name> -- bash
##########################################################################



# MULTI-STAGE build for optimized image size

# Build Stage
FROM maven:3.8.6-jdk-11 AS build           #  AS    
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests          # preferred choice because it create deployable artifact without installing it to local Maven repo (~/.m2/repository).


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


To create image out of Dockerfile 
# docker build -t myfile .


addgroup -S mygroup          -S =--system , 
-Use: create a system group used for system services or applications rather than interactive user logins.
-They usually Group IDs below a certain number (e.g., 1000).

adduser -S myuser -G mygroup          
-When used with adduser, it creates system user. 
-specifies secondary groups that new user should member of.

&&:
Purpose: logical AND
Use: It chains commands together.1st command only execute if command before && completes successfully (returns exit code of 0). 

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

#########################################MY PDF NOTES
LIB-predefined code 
dependency-s/w component need for program

physical server
vm- 1 server with virtulized OS
container use- dependency and env conflict solve
adv- reuse & light weight

Now if you want to see the difference between the basic image and the changes on it  
# docker diff container_name 
Now create image of this container  
# docker commit newcontainer_name image_name 

ADD: similar to copy but it provides a feature to download files from internet, also extract file at 
docker image side.



1) Now share volume with another container 
Container to container 
# docker run -it --name container2 (new) --privileged=true -–volumesfrom container1 ubuntu
# docker run -it --name C2 --privileged=true --volumes-from C1 ubuntu /bin/bash
privileged=true   ----- mean have right to add/delete data
volumes-from C1 ----- share from c1 with c2

Now create volume by using command: 
#docker run -it --name container3 -v /volume2 ubuntu /bin/bash 

2)   share volume between host (ec2) to container only via 
docker run -it --name c3 -v /home/ubuntu:/testvolume --privileged=true ubuntu /bin/bash

# docker run -td --name techserver -p 80:80 ubuntu 

6)    docker inspect container name/id            --------get details about container eg. container IP , network,...

7)   docker logs container name/id                ----logs

CONCLUSION-- 1) U cant use same host port
                           2) U can use same conainer port


 docker port <container_name_or_id> ---------see active ports

 Dockerfile- instructions - Docker image
 Docker image - template  code+ dependencies-run application.
 container-  running instance of a Docker image 
#################################################################################
# Node.js ॲपसाठी बेस इमेज
FROM node:20-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install #### बॅकएंड डिपेंडेंसी इन्स्टॉल करा
COPY . . #### संपूर्ण Node.js कोड कॉपी करा

EXPOSE 3000 #### ॲप्लिकेशन ज्या पोर्टवर चालू आहे तो एक्सपोज करा
CMD ["node", "server.js"] #### तुमच्या ॲपची मुख्य एंट्री पॉइंट फाइल (उदा. app.js किंवा index.js)


FROM node:20-alpine #### Base Node.js image
WORKDIR /app #### Set the working directory
COPY package*.json ./ #### Copy package files
RUN npm install #### Install dependencies
COPY . . #### Copy application code
RUN npm run build #### Build the React app

RUN npm install -g serve #### Install 'serve' globally to serve static files
EXPOSE 3000 #### Expose port 3000 (default for 'serve')
CMD ["serve", "-s", "build", "-l", "3000"] #### Serve the built assets



