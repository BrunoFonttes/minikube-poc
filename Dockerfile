# Download the slim version of node
FROM node:alpine

# Set the work directory to app folder. 
# We will be copying our code here
WORKDIR /src/app

#Copy package.json file in the node folder inside container
COPY ./package.json ./

# Install the dependencies in the container
RUN npm install

# Copy the rest of the code in the container
COPY . .

# Run the node server with server.js file
CMD ["node", "server.js"]

# Expose the service over PORT 3000
EXPOSE 3000