# Use the official Node.js 14 image as the base image
FROM node

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json .

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port on which your backend application will run
EXPOSE 80

ENV MONGODB_USERNAME=root
ENV MONGODB_PASSWORD=password

# Start the backend application
CMD ["npm", "start"]