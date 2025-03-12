# Base image
FROM node:lts-buster

# Set working directory
WORKDIR /Sarka-MD

# Copy package.json and package-lock.json (if available) first for caching
COPY package*.json ./

# Install dependencies
RUN npm install --production && npm install -g pm2

# Copy rest of the files
COPY . .

# Expose necessary ports
EXPOSE 9090

# Start the application
CMD ["npm", "start"]
