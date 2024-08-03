FROM postgres:latest

COPY init-db.sh /docker-entrypoint-initdb.d/init-db.sh
RUN chmod +x /docker-entrypoint-initdb.d/init-db.sh

COPY delete-db.sh /docker-entrypoint-initdb.d/delete-db.sh
RUN chmod +x /docker-entrypoint-initdb.d/delete-db.sh

COPY list-dbs.sh /docker-entrypoint-initdb.d/list-dbs.sh
RUN chmod +x /docker-entrypoint-initdb.d/list-dbs.sh