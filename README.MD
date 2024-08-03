# DOCKER DATABASE CREATION
#### Owner: Maingi Samuel

Able to create many db instances within a docker container without having to setup the postgres database manually

## Setup
1. Setup the postgres Container
```bash
docker-compose up --build -d
```

## Interact With Docker Container
1. To Create a New Database

``` bash 
make create-db DB_NAME=newdb
```

2. To Create a New Database

``` bash 
make delete-db DB_NAME=olddb
```

3. To List all databases

``` bash 
make list-dbs
```