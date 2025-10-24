# Stage 1: Build the application
# This stage uses a Node.js image to build your application's static files.
FROM node:lts-alpine AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# Copy the rest of your application's source code
COPY . .

# Build the application for production (this usually creates a /dist folder)
RUN npm run build

CMD ["npm", "run", "start"]
EXPOSE 5001
