#use node as base image node:14 to get version 14 of node
FROM node

#set working directory to /app
WORKDIR /app

#copy package.json to /app dir
COPY package.json .

#install nodemon global
RUN npm install --global nodemon
#execute npm install
RUN npm install

#copy remaining code to the working directory /app
COPY . .

#expose port
EXPOSE 80

#set Env variables
ENV MONGODB_USERNAME=root
ENV MONGODB_PASSWORD=secret

#command to be executed on container startup
CMD ["npm", "start"]

#build with
#docker build -t goals-node .
#execute with
#docker run --name goals-backend --rm -d -p 80:80 goals-node
#docker run --name goals-backend -v "D:/Projects/Docker/multi-01-starting-setup/backend":/app -v logs:/app/logs -v /app/node_modules -d --rm -p 80:80 --network goals-net goals-node
#execute mongodb container before
# docker run --name mongodb --rm -d -p 27017:27017 mongo
#After setting up the ENV variables
#docker run --name mongodb -v data:/data/db --rm -d --network goals-net -e MONGO_INITDB_ROOT_USERNAME=GIOhnny -e MONGO_INITDB_ROOT_PASSWORD=secret mongo
#docker run --name goals-backend -v "D:/Projects/Docker/multi-01-starting-setup/backend":/app -v logs:/app/logs -v /app/node_modules -e MONGODB_USERNAME=GIOhnny -d --rm -p 80:80 --network goals-net goals-node