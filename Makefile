APP_NAME ?= sql_test
VOLUME_NAME := $(APP_NAME)

.PHONY: psql pgcli postgres run_psql run_pgcli stop

psql: postgres run_psql

pgcli: postgres run_pgcli

postgres:
	docker run --rm --name $(APP_NAME) -v $(VOLUME_NAME):/var/lib/postgresql/data -p 5432:5432 -d postgres:10-alpine

run_psql:
	docker exec -it $(APP_NAME) psql -U postgres

run_pgcli:
	pgcli -h localhost -p 5432 -U postgres

stop:
	docker stop $(APP_NAME)
