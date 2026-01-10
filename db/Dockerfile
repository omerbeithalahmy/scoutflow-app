# משתמשים ב‑Postgres בסיסי
FROM postgres:16

# מעתיקים את ה‑init.sql שייצור את הטבלאות הריקות
COPY ./init/init.sql /docker-entrypoint-initdb.d/
