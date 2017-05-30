# Play around with PostgreSQL

Here's you can find a simple lightweight docker-compose file for PostgreSQL
based on postgresql:9.6-alpine docker image.

You can use it for study PostgreSQL or whatever you want.

## How to use it

Just run the following command: `$ docker-compose run --rm psql`


### Using pgcli

For using Postgres CLI (http://pgcli.com) you needed:

1) Install pgcli (see https://github.com/dbcli/pgcli)
2) Run the following command
```
$ docker run --rm -v sql_test:/var/lib/postgresql/data -p 5432:5432 -d postgres:9.6-alpine
$ pgcli -h localhost -p 5432 -U postgres
```

Don't forget to stop docker after you finised the work:

```
$ docker stop $(docker ps -a -q)
```

## Dependencies

Before starting, you’ll need to have Docker and Compose installed
