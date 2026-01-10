FROM python:3.11-slim

WORKDIR /app

# התקנת PostgreSQL client כדי שיהיה pg_isready
RUN apt-get update && apt-get install -y postgresql-client && rm -rf /var/lib/apt/lists/*

# העתק את תיקיית ingest פנימה כדי שה-package יהיה נכון
COPY . /app/ingest

# התקנת דרישות
RUN pip install --no-cache-dir -r /app/ingest/requirements.txt

# העתק entrypoint.sh
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# הגדרת entrypoint
ENTRYPOINT ["/app/entrypoint.sh"]
