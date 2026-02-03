#!/bin/bash
# ============================================================================
# Ingest Service Entrypoint Script
# Ensures database availability and orchestrates the sequence of data loads
# ============================================================================

set -e
echo "Waiting for PostgreSQL to be ready..."
until pg_isready -h "${POSTGRES_HOST}" -p 5432 -U "${POSTGRES_USER}" -d "${POSTGRES_DB}"; do
    echo "Database not ready yet..."
    sleep 2
done
echo "PostgreSQL is ready, running ingest scripts..."
export PYTHONPATH=/app
python /app/ingest/ingest_nba.py
echo "Ingest finished!"
