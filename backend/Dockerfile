FROM node:10

WORKDIR /usr/src/app

RUN apt-get update \
    && apt-get install -y vim \
    && apt-get install -y mysql-client \
    && apt-get install -y procps
    # && apt-get install -y netcat 

COPY package*.json /usr/src/app/

WORKDIR /usr/src/app

RUN npm install > /usr/src/app/log.txt 2>&1

CMD [ "npm", "run", "dev" ]
