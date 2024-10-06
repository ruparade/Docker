FROM alpine:3.14
WORKDIR /mnt/c/Users/ruparade/GIT/Docker
RUN "sudo apt install npm"
COPY . .
ADD todo-project-docker.json . 
EXPOSE 3000
CMD ["npm", "todo-project-docker.json"]
