FROM node:10

WORKDIR /usr/src/app


RUN npm install -g npm

COPY package*.json ./usr/src/app

RUN npm ci

CMD [ "npm" , "dev" ]
