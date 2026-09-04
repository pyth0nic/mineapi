# Use an official Node.js image as base image
FROM node:22

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm ci --omit=dev

# Copy the rest of the application files
COPY . .

# Specify the command to run when the container starts
CMD ["npm", "start"]