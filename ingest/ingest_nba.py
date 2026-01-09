# --- Ingest NBA data into ScoutFlow DB ---
from ingest.teams import insert_teams
from ingest.players import insert_players
from ingest.games import insert_games
#from ingest.player_season_stats import insert_player_season_stats


insert_teams()
insert_players()
insert_games()
#insert_player_game_stats()