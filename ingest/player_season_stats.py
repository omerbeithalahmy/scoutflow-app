# --- Player_Game_Stats Table ---
# This function fetches NBA player game stats for a given season and inserts them into the 'player_game_stats' table



import psycopg2
import pandas as pd
from nba_api.stats.endpoints import LeagueLeaders
import time
import os
from dotenv import load_dotenv

load_dotenv()

SEASON = "2025-26"          # עונה נוכחית
SEASON_TYPE = "Regular Season"  # עונה רגילה
PER_MODE = "PerGame"        # ממוצעים לכל משחק
API_SLEEP = 1               # מנוחה קצרה למניעת חסימות API

def insert_player_season_stats():
    try:
        # --- התחברות ל-DB ---
        conn = psycopg2.connect(
            host="localhost",
            database=os.getenv("POSTGRES_DB"),
            user=os.getenv("POSTGRES_USER"),
            password=os.getenv("POSTGRES_PASSWORD")
        )
        cur = conn.cursor()

        # --- Fetch all active players from DB ---
        cur.execute("SELECT id, nba_id FROM players WHERE is_active IS TRUE")
        players = cur.fetchall()
        player_map = {nba_id: player_id for player_id, nba_id in players}
        print(f"Found {len(players)} active players in DB")

        # --- Fetch season averages from NBA API ---
        print(f"Fetching season averages for {SEASON} from NBA API...")
        ll = LeagueLeaders(season=SEASON, season_type_all_star=SEASON_TYPE, per_mode48=PER_MODE)
        df = ll.get_data_frames()[0]

        # מנוחה קצרה אחרי הקריאה
        time.sleep(API_SLEEP)

        results = []

        for _, row in df.iterrows():
            nba_id = row["PLAYER_ID"]
            if nba_id not in player_map:
                continue  # השחקן לא נמצא במסד הנתונים שלנו

            player_id = player_map[nba_id]

            results.append((
                player_id,
                SEASON,
                int(row["GP"]),
                float(row["MIN"]),
                float(row["PTS"]),
                float(row["AST"]),
                float(row["REB"]),
                float(row["STL"]),
                float(row["BLK"]),
                float(row["TOV"])
            ))

        # --- Bulk insert/update ---
        cur.executemany(
            """
            INSERT INTO player_season_stats
            (player_id, season, games_played, avg_minutes, avg_points, avg_assists, 
             avg_rebounds, avg_steals, avg_blocks, avg_turnovers)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            ON CONFLICT (player_id, season) DO UPDATE
            SET games_played = EXCLUDED.games_played,
                avg_minutes = EXCLUDED.avg_minutes,
                avg_points = EXCLUDED.avg_points,
                avg_assists = EXCLUDED.avg_assists,
                avg_rebounds = EXCLUDED.avg_rebounds,
                avg_steals = EXCLUDED.avg_steals,
                avg_blocks = EXCLUDED.avg_blocks,
                avg_turnovers = EXCLUDED.avg_turnovers
            """,
            results
        )

        conn.commit()
        print(f"Inserted/Updated season stats for {len(results)} players successfully!")

    except Exception as e:
        print("Database error:", e)

    finally:
        cur.close()
        conn.close()

# --- Run directly ---
if __name__ == "__main__":
    insert_player_season_stats()
