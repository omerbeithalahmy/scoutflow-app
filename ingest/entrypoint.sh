#!/bin/bash
set -e

echo "Waiting for PostgreSQL to be ready..."

# מחכים שה־DB יהיה מוכן
until pg_isready -h db -p 5432 -U "${POSTGRES_USER}" -d "${POSTGRES_DB}"; do
    echo "Database not ready yet..."
    sleep 2
done

echo "PostgreSQL is ready, running ingest scripts..."

# חשוב: מגדירים PYTHONPATH כדי שה-package ingest ימצא
export PYTHONPATH=/app

# מריצים את הסקריפטים
python /app/ingest/ingest_nba.py

echo "Ingest finished!"
