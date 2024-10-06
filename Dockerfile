FROM node:18-slim

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies before copying the rest of the files
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]
