# --- Teams Table ---
# This function fetches all NBA teams and inserts them into the 'teams' table


import psycopg2
from nba_api.stats.static import teams
import os
from dotenv import load_dotenv

load_dotenv()

def insert_teams():
    try:
        # --- Connect to PostgreSQL ---
        conn = psycopg2.connect(
            host=os.getenv("POSTGRES_HOST", "db"),
            port=int(os.getenv("POSTGRES_PORT", 5432)),
            database=os.getenv("POSTGRES_DB"),
            user=os.getenv("POSTGRES_USER"),
            password=os.getenv("POSTGRES_PASSWORD")
        )
        cur = conn.cursor()

        # --- Fetch all NBA teams ---
        all_teams = teams.get_teams()

        # --- Insert each team into the database ---
        for team in all_teams:
            cur.execute(
                """
                INSERT INTO teams (nba_id, name, abbreviation, city)
                VALUES (%s, %s, %s, %s)
                ON CONFLICT (nba_id) DO NOTHING
                """,
                (team['id'], team['full_name'], team['abbreviation'], team['city'])
            )

        # --- Commit changes and close connection ---
        conn.commit()
        print(f"{len(all_teams)} Teams inserted into the database!")

    except Exception as e:
        print("Error inserting teams:", e)

    finally:
        cur.close()
        conn.close()
