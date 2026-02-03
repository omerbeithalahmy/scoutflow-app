# ============================================================================
# NBA Player Data Ingestion
# Handles the extraction and normalization of NBA player profile information
# ============================================================================

import psycopg2
from nba_api.stats.endpoints import commonallplayers
import os
from dotenv import load_dotenv

load_dotenv()

def insert_players():
    try:
        conn = psycopg2.connect(
            host=os.getenv("POSTGRES_HOST", "db"),
            port=int(os.getenv("POSTGRES_PORT", 5432)),
            database=os.getenv("POSTGRES_DB"),
            user=os.getenv("POSTGRES_USER"),
            password=os.getenv("POSTGRES_PASSWORD")
        )
        cur = conn.cursor()
        cap = commonallplayers.CommonAllPlayers(is_only_current_season=1)
        players_list = cap.get_data_frames()[0]
        for _, row in players_list.iterrows():
            is_active = row['ROSTERSTATUS'] == 1
            cur.execute(
                "SELECT id FROM teams WHERE nba_id = %s",
                (row['TEAM_ID'],)
            )
            team_result = cur.fetchone()
            team_id = team_result[0] if team_result else None
            position = row['POSITION'] if 'POSITION' in row else None
            cur.execute(
                """
                INSERT INTO players (nba_id, full_name, position, team_id, is_active)
                VALUES (%s, %s, %s, %s, %s)
                ON CONFLICT (nba_id) DO NOTHING
                """,
                (
                    row['PERSON_ID'],
                    row['DISPLAY_FIRST_LAST'],
                    position,
                    team_id,
                    is_active
                )
            )
        conn.commit()
        print(f"{len(players_list)} Players inserted into the database!")
    except Exception as e:
        print("Error inserting players:", e)
    finally:
        cur.close()
        conn.close()
