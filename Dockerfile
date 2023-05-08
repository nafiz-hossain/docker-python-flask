FROM node:alpine  
#This line specifies the base image for the Docker image. In this case, the base image is node:alpine, which is a lightweight image of Node.js runtime based on Alpine Linux distribution.

COPY . /app
#COPY . /app: This line copies all the files from the current directory (represented by the .) to the /app directory inside the Docker image. This assumes that the Dockerfile is in the same directory as the application code.

WORKDIR /app
#WORKDIR /app: This line sets the working directory inside the Docker image to /app, which means any subsequent commands will be executed from this directory.


CMD node app.js
#CMD node app.js: This line sets the default command to be executed when a container is started from the Docker image. In this case, it runs the node command with the app.js file as an argument, assuming that the app.js file is the entry point of the Node.js application.


#COMMAND to make an image
#docker build -t docker-playground .