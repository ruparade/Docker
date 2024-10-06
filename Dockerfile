#ADDING  base image 
FROM alpine:3.18 
RUN apk add --no-cache nodejs npm
#Adding  workdirectory 
WORKDIR /app
#copying file from source to destination 
COPY package*.json .
#Running installation dependencies 
RUN "npm install"
COPY . .
#Exposing port
EXPOSE 3000
#Executing command
CMD ["npm", "start"]