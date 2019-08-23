# Specify a base image
FROM node:alpine

# Change working directory in container
WORKDIR /usr/app

# Copy build files and install dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]
