# Challenges I Faced with Docker

## Issue: Cannot Connect to Docker Daemon

When I tried to build a Docker image using the command `docker build -t docker-playground .`, I received the error message "ERROR: Cannot connect to the Docker daemon at unix:///home/nafiz/.docker/desktop/docker.sock. Is the docker daemon running?"

### Primary Solution: Use Sudo Permission

The primary solution I found was that Docker requires sudo permission to run properly. So, to build a Docker image, I used the command `sudo docker build -t docker-playground .`. Similarly, to run the Docker image, I used `sudo docker run docker-playground`.

### Additional Steps
1. To make a docker images: ‘sudo docker build -t docker-playground .’
2. To run docker images: ‘sudo docker run docker-playground’
3. After building the Docker image, I logged in to Docker in the terminal using `sudo docker login`. 
4. To check all Docker images, I used `sudo docker images`. 
5. To tag the Docker image, I used `sudo docker tag 4706daa52616 nafizzz85/docker-playground`. 
6. Finally, I pushed the Docker image to Docker Hub using `sudo docker push nafizzz85/docker-playground`.

## Accessing Docker Images from Different Machines

To check the Docker image from a different machine, I used the website https://labs.play-with-docker.com/.

### Steps

1. Login to https://labs.play-with-docker.com/ with your Docker ID.
2. A machine will be ready for you for 4 hours to check your Docker image.
3. Check if Node is available in this machine by running `node`.
4. Check if Docker is installed by running `docker`.
5. Pull the Docker image into this machine by running `docker pull nafizzz85/docker-playground`.
6. Finally, run the image by using `docker run nafizzz85/docker-playground`.
