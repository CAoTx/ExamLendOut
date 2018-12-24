FROM mysql

WORKDIR /usr/src/app

RUN apt-get update \
    && apt-get install -y vim \
    && apt-get install -y mysql-client

RUN   socket=/run/mysqld/mysqlx.sock
# find / -type s \


COPY *.sql /usr/src/app/

CMD mysql -u root -p qwertz  < initneu.sql

# EXPOSE 9009