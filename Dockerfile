# pull an image from local or Docker Registry to based on it
FROM node 

WORKDIR /app

#Copy the files other cofiguration files outside the container into the location you need inside the container. It creates the folder in the image and container without mkdir or another command
COPY . /app

#run NPM Install
RUN npm install

#Expose a certain port to our local system.
EXPOSE 80

#Command to execute the node server.js command. I mean, execute the application/container
CMD ["node", "server.js"]