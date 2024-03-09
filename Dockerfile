# Base image for nodejs version 16
FROM node:16-alpine
# Set the working directory
WORKDIR /app
# Copy package.json and package-lock.json
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of the app's code
COPY . .
# Start the app
CMD ["npm", "start"]
# for at starte projektet, brug kommandoen "docker run -p 3000:3000 react-docker-wp"