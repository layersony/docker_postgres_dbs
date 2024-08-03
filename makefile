DOCKER_CONTAINER_NAME=postgres
SCRIPT_DIR=/docker-entrypoint-initdb.d

.PHONY: help
help:
	@echo "Usage:"
	@echo "  make create-db DB_NAME=<database_name>  # Create a new database"
	@echo "  make delete-db DB_NAME=<database_name>  # Delete an existing database"
	@echo "  make list-dbs                          # List all databases"

.PHONY: create-db
create-db:
	@if [ -z "$(DB_NAME)" ]; then \
		echo "Error: DB_NAME is not set"; \
		exit 1; \
	fi
	docker exec -it $(DOCKER_CONTAINER_NAME) $(SCRIPT_DIR)/init-db.sh $(DB_NAME)

.PHONY: delete-db
delete-db:
	@if [ -z "$(DB_NAME)" ]; then \
		echo "Error: DB_NAME is not set"; \
		exit 1; \
	fi
	docker exec -it $(DOCKER_CONTAINER_NAME) $(SCRIPT_DIR)/delete-db.sh $(DB_NAME)

.PHONY: list-dbs
list-dbs:
	docker exec -it $(DOCKER_CONTAINER_NAME) $(SCRIPT_DIR)/list-dbs.sh
