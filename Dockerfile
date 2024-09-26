#Can use node:lastest to use the lastest version of node
FROM node:10

#Set the working directory on the container
WORKDIR /usr/src/app

#Copy the config file (package.json) to the root of the container
COPY package*.json ./

#Install the dependencies
RUN npm install

#Copy the rest of the files to the container
COPY . .

#Expose the port 3000 for access
EXPOSE 3000

#Start the application
CMD ["npm","start"]