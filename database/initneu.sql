CREATE DATABASE examlandout;

USE examlandout;


CREATE TABLE user(
    idr int NOT NULL AUTO_INCREMENT,
    name varchar(30) NOT NULL, 
    password varchar(128) NOT NULL, 
    permissionlevel INT NOT NULL,
    PRIMARY KEY(idr)
    );
\! echo "user fertig";

CREATE TABLE exam(
    idm int NOT NULL AUTO_INCREMENT,
    data VARCHAR(255) NOT NULL,
    created TIMESTAMP NOT NULL,
    updated TIMESTAMP  NULL,
    semester varchar(24),
    prof VARCHAR(50) NOT NULL,
    CP INT,
    module VARCHAR(50) NOT NULL,	
    aid INT,
    notes varchar(500),  
    usrid INT NOT NULL, 
    PRIMARY KEY(idm),
    FOREIGN KEY (usrid) REFERENCES user(idr)
    );
\! echo "exam fertig";


CREATE TABLE summary(
    idy int NOT NULL AUTO_INCREMENT,
    data VARCHAR(255) NOT NULL, 
    id_user INT NOT NULL, 
    id_exam INT NOT NULL,   
    created TIMESTAMP NOT NULL,
    updated TIMESTAMP  NULL,
    PRIMARY KEY(idy), 
    FOREIGN KEY (id_user) REFERENCES user(idr), 
    FOREIGN KEY (id_exam) REFERENCES exam(idm)
    );
\! echo "summary fertig";

CREATE TABLE solution(
    idn int NOT NULL AUTO_INCREMENT,
    data VARCHAR(255) NOT NULL,
    id_user INT NOT NULL, 
    id_exam INT NOT NULL,  
    created TIMESTAMP NOT NULL, 
    updated TIMESTAMP NULL,
    PRIMARY KEY(idn), 
    FOREIGN KEY (id_user) REFERENCES user(idr), 
    FOREIGN KEY (id_exam) REFERENCES exam(idm)
    );
\! echo "solution fertig";

INSERT INTO user (name , password , permissionlevel)
VALUES ("usrtest","pwd", 2);

INSERT INTO exam (data , created , semester,module,prof,aid,usrid)

VALUES ("testdata",NOW(), 2,"testmodule","testprof",1,1);

SELECT * FROM user ;
SELECT u.name FROM exam e, user u 
WHERE u.idr = e.usrid ;


