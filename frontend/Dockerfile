FROM node:10

WORKDIR /usr/src/app

RUN apt-get update \
    && apt-get install -y vim \
    && npm install -g @angular/cli 

CMD [ "ng", "serve", "--host", "0.0.0.0"]








