# ============================================================================
# NBA Game Data Ingestion
# Processes historical and real-time game data for performance analysis
# ============================================================================

import psycopg2
from nba_api.stats.endpoints import leaguegamefinder
import os
from dotenv import load_dotenv

load_dotenv()

HEADERS = {
    'Host': 'stats.nba.com',
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36',
    'Accept': 'application/json, text/plain, */*',
    'Accept-Language': 'en-US,en;q=0.9',
    'Accept-Encoding': 'gzip, deflate, br',
    'Referer': 'https://stats.nba.com/',
    'Origin': 'https://stats.nba.com',
    'Connection': 'keep-alive',
    'sec-ch-ua': '"Not A(Byte;Brand";v="99", "Google Chrome";v="121", "Chromium";v="121"',
    'sec-ch-ua-mobile': '?0',
    'sec-ch-ua-platform': '"Windows"',
}

def insert_games(season="2025-26"):
    try:
        conn = psycopg2.connect(
            host=os.getenv("POSTGRES_HOST", "db"),
            port=int(os.getenv("POSTGRES_PORT", 5432)),
            database=os.getenv("POSTGRES_DB"),
            user=os.getenv("POSTGRES_USER"),
            password=os.getenv("POSTGRES_PASSWORD")
        )
        cur = conn.cursor()
        finder = leaguegamefinder.LeagueGameFinder(
            season_nullable=season,
            headers=HEADERS,
            timeout=120
        )
        df = finder.get_data_frames()[0]
        grouped = df.groupby("GAME_ID")
        for game_id, group in grouped:
            if len(group) < 2:
                continue
            row1, row2 = group.iloc[0], group.iloc[1]
            matchup1 = row1["MATCHUP"]
            team1 = row1["TEAM_ID"]
            team2 = row2["TEAM_ID"]
            if " vs " in matchup1:
                home_nba = int(team1)
                away_nba = int(team2)
            else:
                home_nba = int(team2)
                away_nba = int(team1)
            cur.execute("SELECT id FROM teams WHERE nba_id = %s", (home_nba,))
            home_row = cur.fetchone()
            home_id = home_row[0] if home_row else None
            cur.execute("SELECT id FROM teams WHERE nba_id = %s", (away_nba,))
            away_row = cur.fetchone()
            away_id = away_row[0] if away_row else None
            game_id_str = str(game_id)
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