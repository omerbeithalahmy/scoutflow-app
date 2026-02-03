# ============================================================================
# PostgreSQL Database Container Specification
# Sets up the ScoutFlow relational database with automated schema initialization
# ============================================================================

FROM postgres:16

COPY ./init/init.sql /docker-entrypoint-initdb.d/
