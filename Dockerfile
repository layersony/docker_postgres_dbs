FROM postgres:17

COPY init-db.sh /docker-entrypoint-initdb.d/init-db.sh
RUN chmod +x /docker-entrypoint-initdb.d/init-db.sh

COPY delete-db.sh /docker-entrypoint-initdb.d/delete-db.sh
RUN chmod +x /docker-entrypoint-initdb.d/delete-db.sh

COPY list-dbs.sh /docker-entrypoint-initdb.d/list-dbs.sh
RUN chmod +x /docker-entrypoint-initdb.d/list-dbs.sh