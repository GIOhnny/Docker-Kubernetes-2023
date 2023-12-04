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
EXPOSE 3000

#command to be executed on container startup
CMD ["npm", "start"]

#build with
# docker build -t goals-react .
#execute with
#docker run --name goals-frontend --rm -d -p 3000:3000 -it goals-react