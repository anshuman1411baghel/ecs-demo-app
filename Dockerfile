# Use an official Node.js image
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose port and start the application
EXPOSE 3000
CMD ["node", "app.js"]

