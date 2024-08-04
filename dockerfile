# To run base docker image and container
# docker pull node:version
# docker run -it node /bin/bash

# touch dockerfile - is the command to create docker file in your project file
# or directly create a file in your folder named dockerfile.

# download extension

# download base images 
FROM node:latest 
RUN npm install -g nodemon

WORKDIR /app
# copy code from this folder and create image also in this folder.
# copy . ./app - means create image in /app folder

COPY . .
RUN npm install
EXPOSE 5500
#CMD ["node", "index.js"]
CMD ["npm","run","dev"]

# create image
# docker build -t basic-app . 
# . if folder in which image is getting created. Relative path