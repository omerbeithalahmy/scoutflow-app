# --- Games Table ---
# This function fetches NBA games for the current season and inserts them into the 'games' table


import psycopg2
from nba_api.stats.endpoints import leaguegamefinder
import os
from dotenv import load_dotenv

load_dotenv()

def insert_games(season="2025-26"):
    try:
        # Connect to the PostgreSQL database
        conn = psycopg2.connect(
            host="localhost",
            database=os.getenv("POSTGRES_DB"),
            user=os.getenv("POSTGRES_USER"),
            password=os.getenv("POSTGRES_PASSWORD")
        )
        cur = conn.cursor()

        # Fetch games from the NBA API
        finder = leaguegamefinder.LeagueGameFinder(season_nullable=season)
        df = finder.get_data_frames()[0]

        # Group by GAME_ID to get pairs for home and away teams
        grouped = df.groupby("GAME_ID")

        for game_id, group in grouped:

            if len(group) < 2:
                # Skip games with only one record (incomplete)
                continue

            # Two rows per game
            row1, row2 = group.iloc[0], group.iloc[1]

            matchup1 = row1["MATCHUP"]
            team1 = row1["TEAM_ID"]
            team2 = row2["TEAM_ID"]

            # Determine home and away teams based on MATCHUP
            if " vs " in matchup1:
                home_nba = int(team1)
                away_nba = int(team2)
            else:
                home_nba = int(team2)
                away_nba = int(team1)

            # Map NBA IDs to internal DB team IDs
            cur.execute("SELECT id FROM teams WHERE nba_id = %s", (home_nba,))
            home_row = cur.fetchone()
            home_id = home_row[0] if home_row else None

            cur.execute("SELECT id FROM teams WHERE nba_id = %s", (away_nba,))
            away_row = cur.fetchone()
            away_id = away_row[0] if away_row else None

            # Convert GAME_ID to string to match TEXT column in DB
            game_id_str = str(game_id)

            # Insert the game into the database
            cur.execute(
                """
                INSERT INTO games (nba_game_id, game_date, season, home_team_id, away_team_id)
                VALUES (%s, %s, %s, %s, %s)
                ON CONFLICT (nba_game_id) DO NOTHING
                """,
                (game_id_str, row1["GAME_DATE"], season, home_id, away_id)
            )

        conn.commit()
        print("Games inserted successfully!")

    except Exception as e:
        print("Error inserting games:", e)

    finally:
        cur.close()
        conn.close()