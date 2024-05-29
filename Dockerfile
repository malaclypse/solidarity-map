ARG NODE_VERSION=16.20.2

FROM node:${NODE_VERSION}-slim as base

ARG PORT=3000

ENV NODE_ENV=production

# Set the working directory
WORKDIR /app

# Copy the package.json and yarn.lock files
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the rest of the application code
COPY . .

FROM base

# Build the application
RUN yarn build

# Expose the port the app runs on
EXPOSE $PORT

# Run the application
CMD ["yarn", "start"]