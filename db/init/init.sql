-- ============================================================================
-- Database Schema Initialization
-- Defines the core tables for teams, players, statistics, and user data
-- ============================================================================

CREATE TABLE teams (
  id SERIAL PRIMARY KEY,
  nba_id INTEGER UNIQUE NOT NULL,
  name TEXT NOT NULL,
  abbreviation TEXT,
  city TEXT
);

CREATE TABLE players (
  id SERIAL PRIMARY KEY,
  nba_id INTEGER UNIQUE NOT NULL,
  full_name TEXT NOT NULL,
  position TEXT,
  team_id INTEGER REFERENCES teams(id),
  is_active BOOLEAN
);

CREATE TABLE games (
  id SERIAL PRIMARY KEY,
  nba_game_id TEXT UNIQUE NOT NULL,
  game_date DATE NOT NULL,
  season TEXT NOT NULL,
  home_team_id INTEGER REFERENCES teams(id),
  away_team_id INTEGER REFERENCES teams(id)
);

CREATE TABLE player_season_stats (
  id SERIAL PRIMARY KEY,
  player_id INTEGER REFERENCES players(id),
  season TEXT NOT NULL,
  games_played INTEGER,
  avg_minutes FLOAT,
  avg_points FLOAT,
  avg_assists FLOAT,
  avg_rebounds FLOAT,
  avg_steals FLOAT,
  avg_blocks FLOAT,
  avg_turnovers FLOAT,
  UNIQUE(player_id, season)
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username TEXT UNIQUE NOT NULL,
  email TEXT UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE user_followed_players (
  user_id INTEGER REFERENCES users(id),
  player_id INTEGER REFERENCES players(id),
  followed_at TIMESTAMP DEFAULT NOW(),
  PRIMARY KEY (user_id, player_id)
);
