FROM node:10

WORKDIR /usr/src/app


RUN apt-get update \
    && apt-get install -y vim \
    && apt-get install -y mysql-client \
    && apt-get install -y procps
    # && apt-get install -y netcat 

COPY package*.json ./

RUN npm install  

CMD [ "npm", "run", "start"] 					

