#use node as base image node:14 to get version 14 of node
FROM node

#set working directory to /app
WORKDIR /app

#copy package.json to /app dir
COPY package.json .

#execute npm install
RUN npm install

#copy remaining code to the working directory /app
COPY . .

#expose port
EXPOSE 80

#command to be executed on container startup
CMD ["node", "app.js"]

#execute with
#docker run --name goals-backend --rm -d -p 80:80 goals-node
#execute mongodb container before
# docker run --name mongodb --rm -d -p 27017:27017 mongo