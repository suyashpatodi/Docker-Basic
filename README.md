# Docker-Basic
Docker introduction and basic concepts

# CREATE IMAGE CMD
- docker build -t basic-app . 
- if folder in which image is getting created. Relative path

# GET ALL THE IMAGES
- docker images

# GET ALL THE CONTAINERS
- docker ps -a

# DELETE AN IMAGE
- Directly delete the image from docker desktop
- If container is created for that image need to first delete container and then image
- docker image rm image_name
- We can use -f at the end for forceful deletion if container is present for the image

# DELETE CONTAINER
- Directly from docker desktop
- docker container rm container_name
- If running then either stop it before deleting or use -f

# DELETE ALL IMAGES AND CONTAINERS
- docker system prune -a

# DELETE ALL IMAGES AND CONTAINER
- docker system prune -a

# CREATE VERSION OF IMAGES
- docker build -t basic-app:version .

# CREATE AND CONTAINER FROM CMD
- docker run --name container_name -p 5500:5500 image_name:version
    - -p means port 
    - version must be specified if any or we can skip

# STOP A CONTAINER FROM CMD
- docker stop container_name

# COMMAND TO CREATE CONTAINER AND VOLUME
- docker run --name container_name -p 5500:5500 --rm -v D:\Docker:/app image_name
    - -v - volume
    - D:\Docker is the path where index.js lies.
    - --rm -  This flag ensures that the container is automatically removed when it exits. This helps keep your system clean by not leaving stopped containers behind.

# COMPOSE FILE
- By using compose you do not need to remember all the commands.
- Extension - yaml
- docker compose up
    - command to run the application and create image and container

# CREATE REPO AND PUSH IMAGES TO DOCKER HUB
- Create repo in docker hub 
- Login in cmd -
    - docker login
        - docker hub username and password
    - First build image and then user docker push command to push the image.
    - Similarly can also pull image from docker hub repo

# DEPLOY IMAGES TO SERVER
    -  play-with-docker
    - create image to supprt linux/amd64
        - docker buildx build --platform linux/amd64 -t image_name_in_docker_hub_repo .
        - push and use the image
        - Pull in play with docker and run the image
            - docker run -p 5500:5500 image_name_in_docker_hub_repo
