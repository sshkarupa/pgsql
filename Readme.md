# Play around with PostgreSQL

Here you can find some useful commands for running PostgreSQL in Docker
container and connect to it via `psql` or `pgcli`. You can use it for study
PostgreSQL or whatever you want.

## How to use it

### start a postgres instance

```
docker run --rm --name sql-test -v sql_test:/var/lib/postgresql/data -p 5432:5432 -d postgres:9.6-alpine
```

### connect to it via psql

```
docker run -it --rm --link sql-test:postgres postgres:9.6-alpine psql -h postgres -U postgres
```

### ... or via pgcli

For using Postgres CLI (http://pgcli.com) you needed:

1) Install pgcli (see https://github.com/dbcli/pgcli)
2) Run the following command
```
$ pgcli -h localhost -p 5432 -U postgres
```

Don't forget to stop docker container when your work is finished:

```
$ docker stop $(docker ps -a -q)
```

### using Makefile

Instead of commands above you can simply run: `make psql`, `make pgcli` or
`make stop`

## Dependencies

Before starting, you need to have Docker installed
