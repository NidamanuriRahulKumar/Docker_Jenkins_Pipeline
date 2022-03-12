# Selecting the base image to build our own customised node.js application microservice
FROM node:latest

# Working directory inside the container
WORKDIR /usr/src/app

# Copying dependencies
COPY package*.json ./

# Installing node package manager
RUN npm install

# Copying everything from current location to default location inside the container
COPY . .

# Second stage of our build for production
#FROM node:alpine

# copy only essential things to this layer
# this line will compress the size and provides full functionality
#COPY --from=app /usr/src/app /usr/src/app

# Define the work directory in the second stage
#WORKDIR /usr/src/app

# Expose the port
EXPOSE 3000

# Starting the app with CMD - 
CMD ["node", "app.js"]


