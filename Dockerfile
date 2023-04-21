# specify base image
# FROM alpine - does not have npm pre-installed
FROM node:14-alpine

# Change the dir into which we paste our files
WORKDIR /usr/app

# Copy current directory in my app into container
COPY ./package.json ./
# install some dependencies
RUN npm install

COPY ./ ./

# Default command
CMD ["npm", "start"]