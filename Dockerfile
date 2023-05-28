# Use an official Node.js runtime as a parent image
FROM node:18.16.0-alpine3.17

# Set the working directory to /opt/app
WORKDIR /opt/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]