#Download base image ubuntu 16.04
FROM ubuntu

# Update Software repository
RUN apt-get update -y
RUN apt-get install nodejs -y
RUN apt-get install npm -y
RUN apt-get install curl vim -y

# Install app dependencies
RUN npm install

COPY server.js /root/server.js

# Binds to port 8080
EXPOSE  8080

CMD ["nodejs", "/root/server.js"]
