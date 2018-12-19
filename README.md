# ExamLendOut

This Repository holds the Database, Backend and Frontend for an `ExamLendOut`-Service. 

The individual modules are executed as docker containers. 


## Status
`
Currently the System is not ready for deployment. 
It is in work right now
`
- 


## Configuration
You have to create your own .env files in the directories `/backend`, `/frontend` & `database` and configure them according to the already existing .env.example templates.
> Here you can set ports & passwords 

## Start 
1. Install Docker on your Machine
2. Run the `Docker-compose-staging.yml` file with command:
> docker-compose up
3. Access frontend via `localhost:port`



## Develope
Here for you have to build the docker container with the `docker-compose.yml` file.
1. You must allow Docker to access this directory on your host machine. You can set this option the `File Sharing`-Preference. 
2. Run the `docker-compose.yml` file. 

3. Now you are able to access the backend directly on the port set in your .env file in the `/backend` folder 
