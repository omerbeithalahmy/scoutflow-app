# ============================================================================
# NBA Player Statistics Ingestion
# Calculates and updates comprehensive player performance metrics per season
# ============================================================================

import psycopg2
import pandas as pd
from nba_api.stats.endpoints import LeagueDashPlayerStats
import time
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

SEASON = "2025-26"
SEASON_TYPE = "Regular Season"
PER_MODE = "PerGame"

def insert_player_season_stats():
    conn = None
    try:
        conn = psycopg2.connect(
            host=os.getenv("POSTGRES_HOST", "db"),
            port=int(os.getenv("POSTGRES_PORT", 5432)),
            database=os.getenv("POSTGRES_DB"),
            user=os.getenv("POSTGRES_USER"),
            password=os.getenv("POSTGRES_PASSWORD")
        )
        cur = conn.cursor()
        cur.execute("SELECT id, nba_id FROM players WHERE is_active IS TRUE")
        players_in_db = cur.fetchall()
        player_map = {nba_id: p_id for p_id, nba_id in players_in_db}
        print(f"✅ Found {len(players_in_db)} active players in your DB.")
        print(f"🏀 Fetching ALL NBA player stats for {SEASON} (this might take a few seconds)...")
        ldp = LeagueDashPlayerStats(
            season=SEASON, 
            season_type_all_star=SEASON_TYPE, 
            per_mode_detailed=PER_MODE,
            headers=HEADERS,
            timeout=120
        )
        df = ldp.get_data_frames()[0]
        results = []
        for _, row in df.iterrows():
            nba_id = int(row["PLAYER_ID"])
            if nba_id in player_map:
                p_id = player_map[nba_id]
                gp = int(row["GP"])
                if gp == 0: continue
                results.append((
                    p_id, 
                    SEASON, 
                    gp, 
                    float(row["MIN"]), 
                    float(row["PTS"]), 
                    float(row["AST"]), 
                    float(row["REB"]), 
                    float(row["STL"]), 
                    float(row["BLK"]), 
                    float(row["TOV"])
                ))
        if results:
            cur.executemany("""
                INSERT INTO player_season_stats
                (player_id, season, games_played, avg_minutes, avg_points, 
                 avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                ON CONFLICT (player_id, season) DO UPDATE SET
                    games_played = EXCLUDED.games_played,
                    avg_minutes = EXCLUDED.avg_minutes,
                    avg_points = EXCLUDED.avg_points,
                    avg_assists = EXCLUDED.avg_assists,
                    avg_rebounds = EXCLUDED.avg_rebounds,
                    avg_steals = EXCLUDED.avg_steals,
                    avg_blocks = EXCLUDED.avg_blocks,
                    avg_turnovers = EXCLUDED.avg_turnovers;
            """, results)
            conn.commit()
            print(f"🚀 SUCCESS: Updated stats for {len(results)} players!")
        else:
            print("⚠️ No stats found to update.")
    except Exception as e:
        print(f"❌ Database error: {e}")
    finally:
        if conn:
            cur.close()
            conn.close()

if __name__ == "__main__":
    insert_player_season_stats()