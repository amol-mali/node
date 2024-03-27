# Use the Node.js 18.16.0 Alpine image as base
FROM node:18.16.0-alpine
# Create directory for the application and set ownership to non-root user
RUN mkdir -p /home/node/app && chown -R node:node /home/node/app
# Set working directory to the application directory
WORKDIR /home/node/app
# Copy package.json and package-lock.json files to the working directory
COPY package*.json ./
# Switch to non-root user
USER node
# Install dependencies defined in package.json
RUN npm install
# Copy application code to the working directory
COPY --chown=node:node . .
# Expose port 8080 for incoming connections
EXPOSE 8080
# Command to run the application when the container starts
CMD [ "node", "app.js" ]
