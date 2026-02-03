# ============================================================================
# NBA Team Data Ingestion
# Maintains the accuracy and updates of NBA franchise metadata
# ============================================================================

import psycopg2
from nba_api.stats.static import teams
import os
from dotenv import load_dotenv

load_dotenv()

def insert_teams():
    try:
        conn = psycopg2.connect(
            host=os.getenv("POSTGRES_HOST", "db"),
            port=int(os.getenv("POSTGRES_PORT", 5432)),
            database=os.getenv("POSTGRES_DB"),
            user=os.getenv("POSTGRES_USER"),
            password=os.getenv("POSTGRES_PASSWORD")
        )
        cur = conn.cursor()
        all_teams = teams.get_teams()
        for team in all_teams:
            cur.execute(
                """
                INSERT INTO teams (nba_id, name, abbreviation, city)
                VALUES (%s, %s, %s, %s)
                ON CONFLICT (nba_id) DO NOTHING
                """,
                (team['id'], team['full_name'], team['abbreviation'], team['city'])
            )
        conn.commit()
        print(f"{len(all_teams)} Teams inserted into the database!")
    except Exception as e:
        print("Error inserting teams:", e)
    finally:
        cur.close()
        conn.close()
