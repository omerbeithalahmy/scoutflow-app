from ingest.teams import insert_teams
from ingest.players import insert_players
from ingest.games import insert_games
from ingest.player_season_stats import insert_player_season_stats

import psycopg2
import os


def reset_ingest_tables():
    """
    Resets only NBA ingest tables.
    Users-related tables are NOT touched.
    """
    conn = psycopg2.connect(
        host=os.getenv("POSTGRES_HOST", "db"),
        dbname=os.getenv("POSTGRES_DB"),
        user=os.getenv("POSTGRES_USER"),
        password=os.getenv("POSTGRES_PASSWORD"),
        port=5432
    )
    conn.autocommit = True

    with conn.cursor() as cur:
        cur.execute("""
            TRUNCATE TABLE
                player_season_stats,
                games,
                players,
                teams
            RESTART IDENTITY
            CASCADE;
        """)

    conn.close()


def run_ingest():
    reset_ingest_tables()

    insert_teams()
    insert_players()
    insert_games()
    insert_player_season_stats()


if __name__ == "__main__":
    run_ingest()
