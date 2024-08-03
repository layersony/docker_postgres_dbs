1. To Create a New Database

``` bash 
docker exec -it postgres /docker-entrypoint-initdb.d/init-db.sh {new database name}
```

2. To Create a New Database

``` bash 
docker exec -it postgres /docker-entrypoint-initdb.d/delete-db.sh {database name}
```

3. To List all databases

``` bash 
docker exec -it postgres /docker-entrypoint-initdb.d/list-dbs.sh
```