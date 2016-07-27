FROM hypriot/rpi-node

MAINTAINER "the.soulman.is@gmail.com"

RUN apt-get update && apt-get install -y git

# git clone to dir, all files are added to root of dir
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN git clone https://github.com/soulmanos/led-arduino-mqtt-nodejs-01.git /usr/src/app

# Install app dependencies
RUN npm install

EXPOSE 8079

CMD [ "npm", "start" ]

