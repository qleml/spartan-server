# Dockerfile
FROM node:18

# Create and set the working directory
WORKDIR /usr/src/spartan-server

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy application files
COPY . .

# Expose the port the app runs on
EXPOSE 7051

# Command to run the application
CMD ["node", "index.js"]

