FROM postgres:16-alpine

# Copy initial schema
COPY init/init.sql /docker-entrypoint-initdb.d/00_init.sql

# Copy pre-generated seed data from host
# Ensure seed.sql is present in the db/init/ directory locally
COPY init/seed.sql /docker-entrypoint-initdb.d/01_seed.sql

EXPOSE 5432
