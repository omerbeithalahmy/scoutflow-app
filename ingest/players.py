# --- Players Table ---
# This function fetches all current NBA players and inserts them nto the 'players' table


import psycopg2
from nba_api.stats.endpoints import commonallplayers
import os
from dotenv import load_dotenv

load_dotenv()

def insert_players():
    try:
        # --- Connect to PostgreSQL ---
        conn = psycopg2.connect(
            host="localhost",
            database=os.getenv("POSTGRES_DB"),
            user=os.getenv("POSTGRES_USER"),
            password=os.getenv("POSTGRES_PASSWORD")
        )
        cur = conn.cursor()

        # --- Fetch all current NBA players ---
        cap = commonallplayers.CommonAllPlayers(is_only_current_season=1)
        players_list = cap.get_data_frames()[0]  # DataFrame with all current players

        # --- Insert each player into the database ---
        for _, row in players_list.iterrows():
            # Convert ROSTERSTATUS to boolean
            is_active = row['ROSTERSTATUS'] == 1

            # Get internal team_id from teams table using nba_id
            cur.execute(
                "SELECT id FROM teams WHERE nba_id = %s",
                (row['TEAM_ID'],)
            )
            team_result = cur.fetchone()
            team_id = team_result[0] if team_result else None  # None if free agent

            # Handle position – may not exist in this DataFrame
            position = row['POSITION'] if 'POSITION' in row else None

            # Insert player
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

        # --- Commit changes and close connection ---
        conn.commit()
        print(f"{len(players_list)} Players inserted into the database!")

    except Exception as e:
        print("Error inserting players:", e)

    finally:
        cur.close()
        conn.close()
