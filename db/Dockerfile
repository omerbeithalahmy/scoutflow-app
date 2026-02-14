FROM postgres:16-alpine

COPY init/init.sql /docker-entrypoint-initdb.d/00_init.sql

COPY init/seed.sql /docker-entrypoint-initdb.d/01_seed.sql

EXPOSE 5432
