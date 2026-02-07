-- Seed Data Generated from CSV
BEGIN;

INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612737, 'Atlanta Hawks', 'ATL', 'Atlanta') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612738, 'Boston Celtics', 'BOS', 'Boston') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612739, 'Cleveland Cavaliers', 'CLE', 'Cleveland') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612740, 'New Orleans Pelicans', 'NOP', 'New Orleans') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612741, 'Chicago Bulls', 'CHI', 'Chicago') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612742, 'Dallas Mavericks', 'DAL', 'Dallas') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612743, 'Denver Nuggets', 'DEN', 'Denver') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612744, 'Golden State Warriors', 'GSW', 'Golden State') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612745, 'Houston Rockets', 'HOU', 'Houston') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612746, 'Los Angeles Clippers', 'LAC', 'Los Angeles') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612747, 'Los Angeles Lakers', 'LAL', 'Los Angeles') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612748, 'Miami Heat', 'MIA', 'Miami') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612749, 'Milwaukee Bucks', 'MIL', 'Milwaukee') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612750, 'Minnesota Timberwolves', 'MIN', 'Minnesota') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612751, 'Brooklyn Nets', 'BKN', 'Brooklyn') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612752, 'New York Knicks', 'NYK', 'New York') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612753, 'Orlando Magic', 'ORL', 'Orlando') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612754, 'Indiana Pacers', 'IND', 'Indiana') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612755, 'Philadelphia 76ers', 'PHI', 'Philadelphia') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612756, 'Phoenix Suns', 'PHX', 'Phoenix') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612757, 'Portland Trail Blazers', 'POR', 'Portland') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612758, 'Sacramento Kings', 'SAC', 'Sacramento') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612759, 'San Antonio Spurs', 'SAS', 'San Antonio') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612760, 'Oklahoma City Thunder', 'OKC', 'Oklahoma City') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612761, 'Toronto Raptors', 'TOR', 'Toronto') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612762, 'Utah Jazz', 'UTA', 'Utah') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612763, 'Memphis Grizzlies', 'MEM', 'Memphis') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612764, 'Washington Wizards', 'WAS', 'Washington') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612765, 'Detroit Pistons', 'DET', 'Detroit') ON CONFLICT (nba_id) DO NOTHING;
INSERT INTO teams (nba_id, name, abbreviation, city) VALUES (1610612766, 'Charlotte Hornets', 'CHA', 'Charlotte') ON CONFLICT (nba_id) DO NOTHING;

-- Generating SQL for players
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (4044701, 'Luka Doncic', 'F-G', 26.9, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (1916077, 'Shai Gilgeous-Alexander', 'G', 27.6, 
  (SELECT id FROM teams WHERE abbreviation = 'OKC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (512615490, 'Anthony Edwards', 'G', 24.5, 
  (SELECT id FROM teams WHERE abbreviation = 'MIN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (177001298, 'Jaylen Brown', 'G-F', 29.3, 
  (SELECT id FROM teams WHERE abbreviation = 'BOS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (426511720, 'Nikola Jokic', 'C', 31.0, 
  (SELECT id FROM teams WHERE abbreviation = 'DEN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (50708347, 'Tyrese Maxey', 'G', 25.3, 
  (SELECT id FROM teams WHERE abbreviation = 'PHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (953759771, 'Donovan Mitchell', 'G', 29.4, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (36375717, 'Giannis Antetokounmpo', 'F', 31.2, 
  (SELECT id FROM teams WHERE abbreviation = 'MIL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (840479685, 'Kawhi Leonard', 'F', 34.6, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (312918140, 'Stephen Curry', 'G', 37.9, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (598295820, 'Lauri Markkanen', 'F-C', 28.7, 
  (SELECT id FROM teams WHERE abbreviation = 'UTA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (212869647, 'Jalen Brunson', 'G', 29.4, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (682429996, 'Austin Reaves', 'G', 27.7, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (399231891, 'Joel Embiid', 'C-F', 31.9, 
  (SELECT id FROM teams WHERE abbreviation = 'PHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (768328999, 'Jock Landale', 'C', 30.3, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (892440087, 'Kevin Durant', 'F', 37.4, 
  (SELECT id FROM teams WHERE abbreviation = 'HOU'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (775183336, 'Jamal Murray', 'G', 29.0, 
  (SELECT id FROM teams WHERE abbreviation = 'DEN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (208939123, 'Deni Avdija', 'F', 25.1, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (142020281, 'Devin Booker', 'G', 29.3, 
  (SELECT id FROM teams WHERE abbreviation = 'PHX'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (756899587, 'James Harden', 'G', 36.5, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (701855967, 'Cade Cunningham', 'G', 24.4, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (333716950, 'Michael Porter Jr.', 'F', 27.6, 
  (SELECT id FROM teams WHERE abbreviation = 'BKN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (987752519, 'Victor Wembanyama', 'F-C', 22.1, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (289624485, 'Keyonte George', 'G', 22.3, 
  (SELECT id FROM teams WHERE abbreviation = 'UTA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (491526573, 'Pascal Siakam', 'F', 31.9, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (849065736, 'Jalen Johnson', 'F', 24.1, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (419572900, 'Norman Powell', 'G', 32.7, 
  (SELECT id FROM teams WHERE abbreviation = 'MIA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (181083693, 'Ty Jerome', 'G-F', 28.6, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (771899853, 'Julius Randle', 'F-C', 31.2, 
  (SELECT id FROM teams WHERE abbreviation = 'MIN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (116946476, 'Trey Murphy III', 'F', 25.6, 
  (SELECT id FROM teams WHERE abbreviation = 'NOP'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (912818761, 'Brandon Ingram', 'F', 28.4, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (397621878, 'Franz Wagner', 'F', 24.5, 
  (SELECT id FROM teams WHERE abbreviation = 'ORL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (390881139, 'Anfernee Simons', 'G', 26.7, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (161738336, 'Tyler Herro', 'G', 26.0, 
  (SELECT id FROM teams WHERE abbreviation = 'MIA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (423598628, 'LeBron James', 'F', 41.1, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (147816302, 'Zion Williamson', 'F', 25.6, 
  (SELECT id FROM teams WHERE abbreviation = 'NOP'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (154759253, 'Paolo Banchero', 'F', 23.2, 
  (SELECT id FROM teams WHERE abbreviation = 'ORL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (936926511, 'Shaedon Sharpe', 'G', 22.7, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (808447614, 'Dillon Brooks', 'G-F', 30.0, 
  (SELECT id FROM teams WHERE abbreviation = 'PHX'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (999085850, 'Alperen Sengun', 'C', 23.5, 
  (SELECT id FROM teams WHERE abbreviation = 'HOU'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (956807990, 'Cooper Flagg', 'F', 19.1, 
  (SELECT id FROM teams WHERE abbreviation = 'DAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (227188386, 'Anthony Davis', 'F-C', 32.9, 
  (SELECT id FROM teams WHERE abbreviation = 'DAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (590633997, 'Nickeil Alexander-Walker', 'G', 27.4, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (99088424, 'Brandon Miller', 'F', 23.2, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (100528206, 'Jimmy Butler', 'F', 36.4, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (533588179, 'Karl-Anthony Towns', 'C-F', 30.2, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (411446299, 'De''Aaron Fox', 'G', 28.1, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (604791180, 'Ja Morant', 'G', 26.5, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (130960356, 'Trae Young', 'G', 27.4, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (260160363, 'Scottie Barnes', 'F-G', 24.5, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (151383542, 'Zach LaVine', 'G', 30.9, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (920719275, 'Jaren Jackson Jr.', 'F-C', 26.4, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (517908425, 'Desmond Bane', 'G', 27.6, 
  (SELECT id FROM teams WHERE abbreviation = 'ORL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (667749633, 'LaMelo Ball', 'G', 24.5, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (33531839, 'DeMar DeRozan', 'G-F', 36.5, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (240706148, 'Jerami Grant', 'F', 31.9, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (870314837, 'CJ McCollum', 'G', 34.4, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (55753057, 'Kon Knueppel', 'G-F', 20.5, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (934984359, 'Coby White', 'G', 26.0, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (928958550, 'Josh Giddey', 'G', 23.3, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (556661055, 'RJ Barrett', 'F-G', 25.7, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (119346795, 'Miles Bridges', 'F', 27.9, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (238903652, 'Bam Adebayo', 'C-F', 28.6, 
  (SELECT id FROM teams WHERE abbreviation = 'MIA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (897537140, 'Darius Garland', 'G', 26.0, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (355971779, 'Evan Mobley', 'C', 24.6, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (870314837, 'CJ McCollum', 'G', 34.4, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (536485881, 'Bennedict Mathurin', 'G-F', 23.6, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (418623258, 'Amen Thompson', 'G-F', 23.0, 
  (SELECT id FROM teams WHERE abbreviation = 'HOU'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (454022355, 'Aaron Gordon', 'F', 30.4, 
  (SELECT id FROM teams WHERE abbreviation = 'DEN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (758647315, 'Jalen Duren', 'C', 22.2, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (311471180, 'Chet Holmgren', 'C-F', 23.8, 
  (SELECT id FROM teams WHERE abbreviation = 'OKC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (150668179, 'Andrew Nembhard', 'G-F', 26.1, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (486878004, 'Derrick White', 'G', 31.6, 
  (SELECT id FROM teams WHERE abbreviation = 'BOS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (813463214, 'Alexandre Sarr', 'C', 20.8, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (822007861, 'Payton Pritchard', 'G', 28.0, 
  (SELECT id FROM teams WHERE abbreviation = 'BOS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (464588370, 'Kevin Porter Jr.', 'G-F', 25.8, 
  (SELECT id FROM teams WHERE abbreviation = 'MIL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (509674317, 'Kristaps Porzingis', 'F-C', 30.5, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (291613868, 'Immanuel Quickley', 'G', 26.6, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (460407599, 'Grayson Allen', 'G', 30.3, 
  (SELECT id FROM teams WHERE abbreviation = 'PHX'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (848262199, 'Ryan Rollins', 'G', 23.6, 
  (SELECT id FROM teams WHERE abbreviation = 'MIL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (490894689, 'Nikola Vucevic', 'C', 35.3, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (871615538, 'Jalen Williams', 'G-F', 24.8, 
  (SELECT id FROM teams WHERE abbreviation = 'OKC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (589931876, 'Saddiq Bey', 'G-F', 26.8, 
  (SELECT id FROM teams WHERE abbreviation = 'NOP'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (767465645, 'O.G. Anunoby', 'F-G', 28.6, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (368554620, 'Stephon Castle', 'G', 21.3, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (806515634, 'Onyeka Okongwu', 'F-C', 25.2, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (371453698, 'Paul George', 'F', 35.8, 
  (SELECT id FROM teams WHERE abbreviation = 'PHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (632714953, 'Domantas Sabonis', 'F-C', 29.8, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (421323361, 'Anthony Black', 'G', 22.0, 
  (SELECT id FROM teams WHERE abbreviation = 'ORL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (856424435, 'Andrew Wiggins', 'F', 31.0, 
  (SELECT id FROM teams WHERE abbreviation = 'MIA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (538879121, 'Mikal Bridges', 'G-F', 29.4, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (477314888, 'Cam Thomas', 'G', 24.3, 
  (SELECT id FROM teams WHERE abbreviation = 'BKN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (541937949, 'Jaime Jaquez Jr.', 'G', 25.0, 
  (SELECT id FROM teams WHERE abbreviation = 'MIA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (897225529, 'Russell Westbrook', 'G', 37.2, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (116155525, 'VJ Edgecombe', 'G', 20.5, 
  (SELECT id FROM teams WHERE abbreviation = 'PHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (47138379, 'Jaden McDaniels', 'F', 25.4, 
  (SELECT id FROM teams WHERE abbreviation = 'MIN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (550536028, 'Kyshawn George', 'F', 22.2, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (912772066, 'Jabari Smith Jr.', 'F', 22.7, 
  (SELECT id FROM teams WHERE abbreviation = 'HOU'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (523750867, 'Guerschon Yabusele', 'F', 30.1, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (511118973, 'Ayo Dosunmu', 'G', 26.1, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (830640233, 'Matas Buzelis', 'F', 21.3, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (117028388, 'Peyton Watson', 'G', 23.4, 
  (SELECT id FROM teams WHERE abbreviation = 'DEN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (808649954, 'Naji Marshall', 'F', 28.0, 
  (SELECT id FROM teams WHERE abbreviation = 'DAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (481803441, 'Keegan Murray', 'F', 25.5, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (9634182, 'Jrue Holiday', 'G', 35.7, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (424717158, 'Naz Reid', 'C-F', 26.5, 
  (SELECT id FROM teams WHERE abbreviation = 'MIN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (530401482, 'Jordan Poole', 'G', 26.6, 
  (SELECT id FROM teams WHERE abbreviation = 'NOP'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (549644990, 'Walker Kessler', 'C', 24.5, 
  (SELECT id FROM teams WHERE abbreviation = 'UTA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (291102061, 'Ivica Zubac', 'C', 28.9, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (83850144, 'Devin Vassell', 'G-F', 25.5, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (603522436, 'Jalen Suggs', 'G', 24.7, 
  (SELECT id FROM teams WHERE abbreviation = 'ORL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (741572820, 'P.J. Washington', 'F', 27.5, 
  (SELECT id FROM teams WHERE abbreviation = 'DAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (390881139, 'Anfernee Simons', 'G', 26.7, 
  (SELECT id FROM teams WHERE abbreviation = 'BOS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (871435757, 'Collin Sexton', 'G', 27.1, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (150749187, 'Ajay Mitchell', 'G', 23.6, 
  (SELECT id FROM teams WHERE abbreviation = 'OKC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (684221022, 'De''Andre Hunter', 'F-G', 28.2, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (472227284, 'Obi Toppin', 'F', 27.9, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (571885519, 'Santi Aldama', 'F-C', 25.1, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (590268833, 'Kelly Oubre Jr.', 'F-G', 30.2, 
  (SELECT id FROM teams WHERE abbreviation = 'PHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (374418465, 'Jaylon Tyson', 'G-F', 23.2, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (997520717, 'Tim Hardaway Jr.', 'G-F', 33.9, 
  (SELECT id FROM teams WHERE abbreviation = 'DEN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (292421219, 'Aaron Nesmith', 'G-F', 26.3, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (306343409, 'Jarrett Allen', 'C', 27.8, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (226265324, 'John Collins', 'F-C', 28.4, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (613317351, 'Collin Gillespie', 'G', 26.6, 
  (SELECT id FROM teams WHERE abbreviation = 'PHX'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (88352337, 'Zach Edey', 'C', 23.7, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (710808056, 'Keldon Johnson', 'F-G', 26.3, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (593553586, 'Cedric Coward', 'G', 22.4, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (913646504, 'Tobias Harris', 'F', 33.6, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (565628164, 'Sam Merrill', 'G', 29.7, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (410612251, 'Bobby Portis', 'F', 31.0, 
  (SELECT id FROM teams WHERE abbreviation = 'MIL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (836024048, 'Deandre Ayton', 'C', 27.5, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (387748993, 'Donte DiVincenzo', 'G', 29.0, 
  (SELECT id FROM teams WHERE abbreviation = 'MIN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (137021758, 'Max Christie', 'G', 23.0, 
  (SELECT id FROM teams WHERE abbreviation = 'DAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (76223014, 'Jeremiah Fears', 'G', 19.3, 
  (SELECT id FROM teams WHERE abbreviation = 'NOP'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (272760984, 'Scotty Pippen Jr.', 'G', 25.2, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (935028280, 'Jaden Ivey', 'G', 24.0, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (302893023, 'Kyle Kuzma', 'F', 30.5, 
  (SELECT id FROM teams WHERE abbreviation = 'MIL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (167348188, 'Tre Johnson', 'G', 19.9, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (312643840, 'Toumani Camara', 'F', 25.8, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (451162477, 'Myles Turner', 'C-F', 29.9, 
  (SELECT id FROM teams WHERE abbreviation = 'MIL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (350969535, 'Miles McBride', 'G', 25.4, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (97651019, 'Dennis Schroder', 'G', 32.4, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (450556794, 'Quentin Grimes', 'G', 25.8, 
  (SELECT id FROM teams WHERE abbreviation = 'PHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (683179947, 'Noah Clowney', 'F-C', 21.6, 
  (SELECT id FROM teams WHERE abbreviation = 'BKN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (993536379, 'Brandon Williams', 'G', 26.2, 
  (SELECT id FROM teams WHERE abbreviation = 'DAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (707700501, 'Malik Monk', 'G', 28.0, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (678129899, 'Tre Jones', 'G', 26.1, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (494930235, 'Reed Sheppard', 'G', 21.6, 
  (SELECT id FROM teams WHERE abbreviation = 'HOU'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (822101795, 'Mark Williams', 'C', 24.1, 
  (SELECT id FROM teams WHERE abbreviation = 'PHX'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (171548747, 'Derik Queen', 'C', 21.1, 
  (SELECT id FROM teams WHERE abbreviation = 'NOP'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (785925807, 'Brice Sensabaugh', 'F', 22.3, 
  (SELECT id FROM teams WHERE abbreviation = 'UTA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (918466610, 'Nic Claxton', 'C', 26.8, 
  (SELECT id FROM teams WHERE abbreviation = 'BKN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (453743558, 'Josh Hart', 'G', 30.9, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (99523722, 'Duncan Robinson', 'F', 31.8, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (502112432, 'Jonathan Kuminga', 'F', 23.3, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (898537815, 'Cam Spencer', 'G', 25.8, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (664865963, 'Jaylen Wells', 'F', 22.5, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (655552281, 'Wendell Carter Jr.', 'C-F', 26.8, 
  (SELECT id FROM teams WHERE abbreviation = 'ORL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (902403182, 'Rui Hachimura', 'F', 28.0, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (957435820, 'Tari Eason', 'F', 24.7, 
  (SELECT id FROM teams WHERE abbreviation = 'HOU'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (793155956, 'De''Anthony Melton', 'G', 27.7, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (461186105, 'Brandin Podziemski', 'G', 23.0, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (5493128, 'Cameron Johnson', 'F', 29.9, 
  (SELECT id FROM teams WHERE abbreviation = 'DEN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (810519954, 'Jalen Green', 'G', 24.0, 
  (SELECT id FROM teams WHERE abbreviation = 'PHX'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (552929659, 'Klay Thompson', 'G', 36.0, 
  (SELECT id FROM teams WHERE abbreviation = 'DAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (437551458, 'Julian Champagnie', 'F', 24.6, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (384320093, 'Ace Bailey', 'F', 19.5, 
  (SELECT id FROM teams WHERE abbreviation = 'UTA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (503783581, 'Dyson Daniels', 'G', 22.9, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (597064963, 'Sandro Mamukelashvili', 'F-C', 26.7, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (768328999, 'Jock Landale', 'C', 30.3, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (244346261, 'Donovan Clingan', 'C', 22.0, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (42295351, 'Jusuf Nurkic', 'C', 31.5, 
  (SELECT id FROM teams WHERE abbreviation = 'UTA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (157857053, 'Caleb Love', 'G', 24.4, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (747715910, 'Moses Moody', 'G', 23.7, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (479729512, 'Kel''el Ware', 'C', 21.8, 
  (SELECT id FROM teams WHERE abbreviation = 'MIA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (46382491, 'Scoot Henderson', 'G', 22.0, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (887496753, 'Walter Clayton Jr.', 'G', 22.9, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (490894689, 'Nikola Vucevic', 'C', 35.3, 
  (SELECT id FROM teams WHERE abbreviation = 'BOS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (97651019, 'Dennis Schroder', 'G', 32.4, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (504501345, 'Isaiah Hartenstein', 'C-F', 27.8, 
  (SELECT id FROM teams WHERE abbreviation = 'OKC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (24503326, 'Kevin Huerter', 'G-F', 27.5, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (986683772, 'Egor Demin', 'G', 19.9, 
  (SELECT id FROM teams WHERE abbreviation = 'BKN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (464207267, 'Aaron Wiggins', 'G', 27.1, 
  (SELECT id FROM teams WHERE abbreviation = 'OKC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (758682521, 'Corey Kispert', 'F', 26.9, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (645351420, 'Rudy Gobert', 'C', 33.6, 
  (SELECT id FROM teams WHERE abbreviation = 'MIN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (515584179, 'Dylan Harper', 'G', 19.9, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (333024667, 'Zaccharie Risacher', 'F', 20.8, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (28709855, 'Harrison Barnes', 'F', 33.7, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (529323024, 'A.J. Green', 'G', 26.4, 
  (SELECT id FROM teams WHERE abbreviation = 'MIL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (593067285, 'Ausar Thompson', 'G-F', 23.0, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (432166947, 'Derrick Jones Jr.', 'F', 29.0, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (369588355, 'Khris Middleton', 'F', 34.5, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (227747867, 'Jarace Walker', 'F', 22.4, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (723563633, 'Royce O''Neale', 'F', 32.7, 
  (SELECT id FROM teams WHERE abbreviation = 'PHX'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (590205036, 'D''Angelo Russell', 'G', 30.0, 
  (SELECT id FROM teams WHERE abbreviation = 'DAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (198749421, 'Jalen Smith', 'F-C', 25.9, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (266701669, 'Pelle Larsson', 'G', 25.0, 
  (SELECT id FROM teams WHERE abbreviation = 'MIA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (449078044, 'Marvin Bagley III', 'F', 26.9, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (138190608, 'Bub Carrington', 'G', 20.6, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (787675387, 'Isaiah Stewart', 'F-C', 24.7, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (671218450, 'Isaiah Collier', 'G', 21.3, 
  (SELECT id FROM teams WHERE abbreviation = 'UTA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (229808024, 'Neemias Queta', 'C', 26.6, 
  (SELECT id FROM teams WHERE abbreviation = 'BOS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (417400512, 'Zach Collins', 'F-C', 28.2, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (660355893, 'Isaiah Joe', 'G', 26.6, 
  (SELECT id FROM teams WHERE abbreviation = 'OKC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (469671667, 'Bilal Coulibaly', 'G', 21.5, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (537960914, 'Jakob Poeltl', 'C', 30.3, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (74553292, 'Maxime Raynaud', 'C', 22.8, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (730379820, 'Kyle Filipowski', 'C', 22.3, 
  (SELECT id FROM teams WHERE abbreviation = 'UTA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (630553504, 'Landry Shamet', 'G', 28.9, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (390372258, 'T.J. McConnell', 'G', 33.9, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (379836972, 'Jake LaRavia', 'F', 24.3, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (247497086, 'Marcus Smart', 'G', 31.9, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (644554112, 'Ziaire Williams', 'F', 24.4, 
  (SELECT id FROM teams WHERE abbreviation = 'BKN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (114641708, 'Jordan Clarkson', 'G', 33.7, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (969593520, 'Jordan Miller', 'G', 26.0, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (758682521, 'Corey Kispert', 'F', 26.9, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (400361280, 'Cam Whitmore', 'F', 21.6, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (457499680, 'Christian Braun', 'G', 24.8, 
  (SELECT id FROM teams WHERE abbreviation = 'DEN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (694769920, 'Davion Mitchell', 'G', 27.4, 
  (SELECT id FROM teams WHERE abbreviation = 'MIA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (265754448, 'Vit Krejci', 'G', 25.6, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (923787586, 'Jonas Valanciunas', 'C', 33.8, 
  (SELECT id FROM teams WHERE abbreviation = 'DEN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (334057834, 'Herbert Jones', 'F', 27.3, 
  (SELECT id FROM teams WHERE abbreviation = 'NOP'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (236051624, 'Sam Hauser', 'F', 28.2, 
  (SELECT id FROM teams WHERE abbreviation = 'BOS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (830227453, 'Svi Mykhailiuk', 'G-F', 28.7, 
  (SELECT id FROM teams WHERE abbreviation = 'UTA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (854478662, 'Luguentz Dort', 'G', 26.8, 
  (SELECT id FROM teams WHERE abbreviation = 'OKC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (241686525, 'Isaac Okoro', 'F-G', 25.0, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (123042215, 'Tristan da Silva', 'F', 24.7, 
  (SELECT id FROM teams WHERE abbreviation = 'ORL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (293909180, 'Jordan Goodwin', 'G', 27.3, 
  (SELECT id FROM teams WHERE abbreviation = 'PHX'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (10876407, 'GG Jackson', 'F', 21.1, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (210371208, 'Jay Huff', 'C', 28.5, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (943392560, 'Gary Trent Jr.', 'G', 27.1, 
  (SELECT id FROM teams WHERE abbreviation = 'MIL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (311158508, 'Dominick Barlow', 'F', 22.7, 
  (SELECT id FROM teams WHERE abbreviation = 'PHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (349881689, 'Simone Fontecchio', 'F', 30.2, 
  (SELECT id FROM teams WHERE abbreviation = 'MIA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (385786914, 'Ryan Kalkbrenner', 'C', 24.1, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (489359108, 'Daniel Gafford', 'F-C', 27.4, 
  (SELECT id FROM teams WHERE abbreviation = 'DAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (409094610, 'Kentavious Caldwell-Pope', 'G', 33.0, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (956681675, 'Moussa Diabate', 'F', 24.0, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (954193190, 'Draymond Green', 'F', 35.9, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (935028280, 'Jaden Ivey', 'G', 24.0, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (744541634, 'Daniss Jenkins', 'G', 24.5, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (204300604, 'Bradley Beal', 'G', 32.6, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (635161508, 'Moritz Wagner', 'F-C', 28.8, 
  (SELECT id FROM teams WHERE abbreviation = 'ORL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (298480551, 'Ronald Holland II', 'F', 20.6, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (114088912, 'Day''Ron Sharpe', 'C', 24.3, 
  (SELECT id FROM teams WHERE abbreviation = 'BKN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (265754448, 'Vit Krejci', 'G', 25.6, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (495133740, 'Vince Williams Jr.', 'G', 25.4, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (836938174, 'Collin Murray-Boyles', 'F', 20.7, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (723198814, 'Luka Garza', 'C', 27.1, 
  (SELECT id FROM teams WHERE abbreviation = 'BOS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (184641973, 'Nikola Jovic', 'F', 22.7, 
  (SELECT id FROM teams WHERE abbreviation = 'MIA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (750561102, 'Buddy Hield', 'G', 33.1, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (311385472, 'Danny Wolf', 'F', 21.8, 
  (SELECT id FROM teams WHERE abbreviation = 'BKN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (268336630, 'Jose Alvarado', 'G', 27.8, 
  (SELECT id FROM teams WHERE abbreviation = 'NOP'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (174490259, 'Luke Kennard', 'G', 29.6, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (685576173, 'Quinten Post', 'C', 25.9, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (233258906, 'Cason Wallace', 'G', 22.3, 
  (SELECT id FROM teams WHERE abbreviation = 'OKC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (24082212, 'Quenton Jackson', 'G', 27.4, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (520734578, 'Kris Dunn', 'G', 31.9, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (481687027, 'Caris LeVert', 'G', 31.5, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (861821181, 'Bryce McGowens', 'G', 23.3, 
  (SELECT id FROM teams WHERE abbreviation = 'NOP'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (833965862, 'Bogdan Bogdanovic', 'G', 33.5, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (877882736, 'Terance Mann', 'G-F', 29.3, 
  (SELECT id FROM teams WHERE abbreviation = 'BKN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (684221022, 'De''Andre Hunter', 'F-G', 28.2, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (163085267, 'Bruce Brown', 'G-F', 29.5, 
  (SELECT id FROM teams WHERE abbreviation = 'DEN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (382719953, 'Luke Kornet', 'C-F', 30.6, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (895911933, 'Al Horford', 'C-F', 39.7, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (587768657, 'Tre Mann', 'G', 25.0, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (751941624, 'Precious Achiuwa', 'F', 26.4, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (533055698, 'Justin Champagnie', 'G-F', 24.6, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (667341989, 'Tyrese Martin', 'F', 26.9, 
  (SELECT id FROM teams WHERE abbreviation = 'BKN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (830611725, 'Bones Hyland', 'G', 25.4, 
  (SELECT id FROM teams WHERE abbreviation = 'MIN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (339745290, 'Kyle Anderson', 'F-G', 32.4, 
  (SELECT id FROM teams WHERE abbreviation = 'UTA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (600294081, 'Tristan Vukcevic', 'F', 22.9, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (565297167, 'Javonte Green', 'G', 32.5, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (465477467, 'PJ Hall', 'C', 24.0, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (384028970, 'Seth Curry', 'G', 35.5, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (345560417, 'Kenrich Williams', 'G-F', 31.2, 
  (SELECT id FROM teams WHERE abbreviation = 'OKC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (826953576, 'Kobe Sanders', 'G', 23.7, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (212112052, 'Jamal Shead', 'G', 23.5, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (914511031, 'Jamaree Bouyea', 'G', 26.6, 
  (SELECT id FROM teams WHERE abbreviation = 'PHX'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (751200193, 'Jaden Hardy', 'G', 23.6, 
  (SELECT id FROM teams WHERE abbreviation = 'DAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (657218436, 'Andre Drummond', 'C', 32.5, 
  (SELECT id FROM teams WHERE abbreviation = 'PHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (599256237, 'Micah Potter', 'C', 27.8, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (456890318, 'Kevin Love', 'F-C', 37.4, 
  (SELECT id FROM teams WHERE abbreviation = 'UTA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (887496753, 'Walter Clayton Jr.', 'G', 22.9, 
  (SELECT id FROM teams WHERE abbreviation = 'UTA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (310570406, 'Patrick Williams', 'F', 24.5, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (645915509, 'Will Richard', 'G', 23.1, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (303288792, 'Ryan Nembhard', 'G', 22.9, 
  (SELECT id FROM teams WHERE abbreviation = 'DAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (815838813, 'Brook Lopez', 'C', 37.9, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (161415423, 'Cole Anthony', 'G', 25.7, 
  (SELECT id FROM teams WHERE abbreviation = 'MIL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (171777530, 'Nae''Qwan Tomlin', 'F', 25.1, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (153297756, 'Jared McCain', 'G', 22.0, 
  (SELECT id FROM teams WHERE abbreviation = 'PHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (443277468, 'Sidy Cissoko', 'G', 21.9, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (227967987, 'Will Riley', 'F', 20.0, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (184943493, 'Gradey Dick', 'G-F', 22.2, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (215282206, 'Nolan Traore', 'G', 19.7, 
  (SELECT id FROM teams WHERE abbreviation = 'BKN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (594988682, 'Robert Williams III', 'C-F', 28.3, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (231494414, 'Isaiah Jackson', 'F', 24.1, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (314686568, 'Tidjane Salaun', 'F', 20.5, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (713312836, 'Jaxson Hayes', 'C-F', 25.7, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (492446002, 'Mac McClung', 'G', 27.1, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (112880533, 'Ja''Kobe Walter', 'G', 21.4, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (27890567, 'Dru Smith', 'G', 28.1, 
  (SELECT id FROM teams WHERE abbreviation = 'MIA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (694944003, 'Ben Sheppard', 'G', 24.6, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (819994691, 'Kris Murray', 'F', 25.5, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (244043725, 'Blake Wesley', 'G', 22.9, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (873174557, 'Taurean Prince', 'F', 31.9, 
  (SELECT id FROM teams WHERE abbreviation = 'MIL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (277703117, 'Drake Powell', 'G-F', 20.4, 
  (SELECT id FROM teams WHERE abbreviation = 'BKN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (406271098, 'Alex Caruso', 'G', 31.9, 
  (SELECT id FROM teams WHERE abbreviation = 'OKC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (866441466, 'Jaylin Williams', 'F', 23.6, 
  (SELECT id FROM teams WHERE abbreviation = 'OKC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (767142214, 'Keon Ellis', 'G', 26.1, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (304465382, 'KJ Simpson', 'G', 23.5, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (548425100, 'Trendon Watford', 'G-F', 25.2, 
  (SELECT id FROM teams WHERE abbreviation = 'PHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (26318022, 'Spencer Jones', 'F', 24.7, 
  (SELECT id FROM teams WHERE abbreviation = 'DEN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (679122201, 'Ryan Dunn', 'F', 23.1, 
  (SELECT id FROM teams WHERE abbreviation = 'PHX'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (831125866, 'Nique Clifford', 'G', 24.0, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (887859050, 'Cody Williams', 'F', 21.2, 
  (SELECT id FROM teams WHERE abbreviation = 'UTA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (680772582, 'Goga Bitadze', 'C-F', 26.6, 
  (SELECT id FROM teams WHERE abbreviation = 'ORL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (142123122, 'Nick Smith Jr.', 'G', 21.8, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (449597390, 'Pat Spencer', 'G', 29.6, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (589389103, 'Josh Minott', 'F', 23.2, 
  (SELECT id FROM teams WHERE abbreviation = 'BOS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (829490984, 'Dean Wade', 'F-C', 29.2, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (406627494, 'Steven Adams', 'C', 32.6, 
  (SELECT id FROM teams WHERE abbreviation = 'HOU'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (823161476, 'Aaron Holiday', 'G', 29.4, 
  (SELECT id FROM teams WHERE abbreviation = 'HOU'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (481086126, 'Jalen Pickett', 'G', 26.3, 
  (SELECT id FROM teams WHERE abbreviation = 'DEN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (775315636, 'Paul Reed', 'F', 26.7, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (313744354, 'Sion James', 'G', 23.2, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (300077631, 'Marcus Sasser', 'G', 25.4, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (767142214, 'Keon Ellis', 'G', 26.1, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (312299972, 'Yves Missi', 'C', 21.7, 
  (SELECT id FROM teams WHERE abbreviation = 'NOP'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (691768737, 'Grant Williams', 'F', 27.2, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (370884837, 'Eric Gordon', 'G', 37.1, 
  (SELECT id FROM teams WHERE abbreviation = 'PHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (962644785, 'Jordan Walsh', 'G', 21.9, 
  (SELECT id FROM teams WHERE abbreviation = 'BOS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (213433990, 'Oso Ighodaro', 'F', 23.6, 
  (SELECT id FROM teams WHERE abbreviation = 'PHX'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (6430084, 'Jalen Wilson', 'F', 25.3, 
  (SELECT id FROM teams WHERE abbreviation = 'BKN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (194789588, 'Jevon Carter', 'G', 30.4, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (928777279, 'Olivier-Maxence Prosper', 'F', 23.6, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (825350461, 'Josh Okogie', 'G', 27.4, 
  (SELECT id FROM teams WHERE abbreviation = 'HOU'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (704522187, 'Asa Newell', 'F', 20.3, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (994025426, 'Garrison Mathews', 'G', 29.3, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (450259404, 'Tolu Smith', 'F', 25.5, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (432502011, 'Julian Strawther', 'G', 23.8, 
  (SELECT id FROM teams WHERE abbreviation = 'DEN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (126054963, 'Johnny Furphy', 'G', 21.2, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (805352061, 'Gui Santos', 'F', 23.6, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (605812096, 'Thomas Bryant', 'C-F', 28.5, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (8428259, 'Jase Richardson', 'G', 20.3, 
  (SELECT id FROM teams WHERE abbreviation = 'ORL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (87192522, 'Dylan Cardwell', 'C', 24.1, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (963031828, 'Drew Eubanks', 'F-C', 29.0, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (82545116, 'Taylor Hendricks', 'F', 22.2, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (948609575, 'Yuki Kawamura', 'G', 24.8, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (267931795, 'Patrick Baldwin Jr.', 'F', 23.2, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (401957822, 'Pete Nance', 'F', 26.0, 
  (SELECT id FROM teams WHERE abbreviation = 'MIL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (324158189, 'Matisse Thybulle', 'G-F', 28.9, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (887751094, 'Javon Small', 'G', 23.1, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (959702375, 'Tyler Kolek', 'G', 24.9, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (545989530, 'Gary Payton II', 'G', 33.2, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (838561457, 'Noah Penda', 'G-F', 21.1, 
  (SELECT id FROM teams WHERE abbreviation = 'ORL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (914107269, 'RayJ Dennis', 'G', 24.9, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (608370875, 'Jett Howard', 'G', 22.4, 
  (SELECT id FROM teams WHERE abbreviation = 'ORL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (712917450, 'Branden Carlson', 'C', 26.7, 
  (SELECT id FROM teams WHERE abbreviation = 'OKC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (82545116, 'Taylor Hendricks', 'F', 22.2, 
  (SELECT id FROM teams WHERE abbreviation = 'UTA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (356708149, 'Tyrese Proctor', 'G', 21.9, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (595025438, 'Craig Porter', 'G', 25.9, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (794770124, 'Jarred Vanderbilt', 'F', 26.9, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (355348990, 'Mitchell Robinson', 'C-F', 27.9, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (466915712, 'Mouhamed Gueye', 'F', 23.2, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (311120686, 'Gabe Vincent', 'G', 29.7, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (939667879, 'TyTy Washington Jr.', 'G', 24.2, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (183477687, 'Karlo Matkovic', 'F-C', 24.9, 
  (SELECT id FROM teams WHERE abbreviation = 'NOP'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (381346456, 'Malaki Branham', 'F', 22.7, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (262256811, 'Jeremiah Robinson-Earl', 'F', 25.3, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (550766096, 'Dalton Knecht', 'F', 24.8, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (46299684, 'Justin Edwards', 'F', 22.1, 
  (SELECT id FROM teams WHERE abbreviation = 'PHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (184154691, 'Ben Saraf', 'G', 19.8, 
  (SELECT id FROM teams WHERE abbreviation = 'BKN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (713147305, 'Lonzo Ball', 'G', 28.3, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (110339533, 'Josh Green', 'G', 25.2, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (434142240, 'Ethan Thompson', 'G', 26.8, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (820057491, 'DeAndre Jordan', 'C', 37.5, 
  (SELECT id FROM teams WHERE abbreviation = 'NOP'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (929285730, 'Terrence Shannon Jr.', 'G-F', 25.5, 
  (SELECT id FROM teams WHERE abbreviation = 'MIN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (262256811, 'Jeremiah Robinson-Earl', 'F', 25.3, 
  (SELECT id FROM teams WHERE abbreviation = 'DAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (66498852, 'Micah Peavy', 'G-F', 24.6, 
  (SELECT id FROM teams WHERE abbreviation = 'NOP'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (664323306, 'Mike Conley', 'G', 38.3, 
  (SELECT id FROM teams WHERE abbreviation = 'MIN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (993775213, 'Nicolas Batum', 'G-F', 37.1, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (489126512, 'Skal Labissiere', 'F-C', 29.9, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (822911408, 'Jeremy Sochan', 'F', 22.7, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (14439962, 'Devin Carter', 'G', 23.9, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (224122299, 'Zeke Nnaji', 'F-C', 25.1, 
  (SELECT id FROM teams WHERE abbreviation = 'DEN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (917683190, 'Dereck Lively II', 'C', 22.0, 
  (SELECT id FROM teams WHERE abbreviation = 'DAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (87020483, 'Jordan Hawkins', 'G', 23.8, 
  (SELECT id FROM teams WHERE abbreviation = 'NOP'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (35819894, 'Ochai Agbaji', 'G', 25.8, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (6084577, 'Kasparas Jakucionis', 'G', 19.7, 
  (SELECT id FROM teams WHERE abbreviation = 'MIA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (286175439, 'Trayce Jackson-Davis', 'F', 26.0, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (813727657, 'A.J. Lawson', 'G', 25.6, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (570548518, 'Liam McNeeley', 'F', 20.3, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (400714289, 'DaRon Holmes II', 'F', 23.5, 
  (SELECT id FROM teams WHERE abbreviation = 'DEN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (654830436, 'Sharife Cooper', 'G', 24.7, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (91051524, 'Adem Bona', 'F', 22.9, 
  (SELECT id FROM teams WHERE abbreviation = 'PHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (492446002, 'Mac McClung', 'G', 27.1, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (24503326, 'Kevin Huerter', 'G-F', 27.5, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (731388072, 'Brandon Clarke', 'F', 29.4, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (844722830, 'Myron Gardner', 'F', 24.7, 
  (SELECT id FROM teams WHERE abbreviation = 'MIA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (811860861, 'Tony Bradley', 'C-F', 28.1, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (870260299, 'Christian Koloko', 'C', 25.6, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (901468386, 'Jamir Watkins', 'F', 24.6, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (692177503, 'Hugo Gonzalez', 'G', 20.0, 
  (SELECT id FROM teams WHERE abbreviation = 'BOS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (284381403, 'Keaton Wallace', 'G', 26.9, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (71478132, 'Clint Capela', 'C', 31.7, 
  (SELECT id FROM teams WHERE abbreviation = 'HOU'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (233411897, 'Jaylen Clark', 'G', 24.3, 
  (SELECT id FROM teams WHERE abbreviation = 'MIN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (312255267, 'Ousmane Dieng', 'F', 22.7, 
  (SELECT id FROM teams WHERE abbreviation = 'OKC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (514102149, 'Moussa Cisse', 'C', 23.4, 
  (SELECT id FROM teams WHERE abbreviation = 'DAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (606589758, 'Jabari Walker', 'F', 23.5, 
  (SELECT id FROM teams WHERE abbreviation = 'PHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (242018481, 'Baylor Scheierman', 'G', 25.4, 
  (SELECT id FROM teams WHERE abbreviation = 'BOS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (373727502, 'Cam Christie', 'G', 20.5, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (7160969, 'Larry Nance Jr.', 'F-C', 33.1, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (874558578, 'Kelly Olynyk', 'F-C', 34.8, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (535024796, 'Charles Bassey', 'C-F', 25.3, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (360941219, 'Rob Dillingham', 'G', 21.1, 
  (SELECT id FROM teams WHERE abbreviation = 'MIN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (917351478, 'Yanic Konan Niederhauser', 'C', 22.9, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (756030702, 'Dalen Terry', 'F', 23.6, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (98570657, 'Doug McDermott', 'F', 34.1, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (753158891, 'James Wiseman', 'C', 24.9, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (33905150, 'Chaz Lanier', 'G', 24.1, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (114736843, 'Caleb Martin', 'F', 30.4, 
  (SELECT id FROM teams WHERE abbreviation = 'DAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (795288705, 'Nick Richards', 'C', 28.2, 
  (SELECT id FROM teams WHERE abbreviation = 'PHX'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (765311334, 'John Konchar', 'G', 29.9, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (468558754, 'Jamison Battle', 'F', 24.7, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (750556837, 'Drew Timme', 'F', 25.4, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (289095253, 'Mark Sears', 'G', 24.0, 
  (SELECT id FROM teams WHERE abbreviation = 'MIL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (939935781, 'Keshad Johnson', 'F', 24.6, 
  (SELECT id FROM teams WHERE abbreviation = 'MIA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (322395212, 'Jericho Sims', 'C', 27.3, 
  (SELECT id FROM teams WHERE abbreviation = 'MIL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (296885406, 'Kobe Bufkin', 'G', 22.4, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (529377382, 'Oscar Tshiebwe', 'F-C', 26.2, 
  (SELECT id FROM teams WHERE abbreviation = 'UTA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (481177652, 'Emanuel Miller', 'F', 25.6, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (310039902, 'Chris Livingston', 'F', 22.3, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (463935287, 'Antonio Reeves', 'G', 23.2, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (864854117, 'Daeqwon Plowden', 'G-F', 27.4, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (860196053, 'Monte Morris', 'G', 30.6, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (201817432, 'Ron Harper Jr.', 'G-F', 25.8, 
  (SELECT id FROM teams WHERE abbreviation = 'BOS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (821186029, 'Rayan Rupert', 'G-F', 21.7, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (455204148, 'Joan Beringer', 'F', 19.2, 
  (SELECT id FROM teams WHERE abbreviation = 'MIN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (934049316, 'Dwight Powell', 'F-C', 34.6, 
  (SELECT id FROM teams WHERE abbreviation = 'DAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (154222292, 'Riley Minix', 'F', 25.4, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (582728490, 'Tyus Jones', 'G', 29.7, 
  (SELECT id FROM teams WHERE abbreviation = 'ORL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (256283604, 'Dorian Finney-Smith', 'F', 32.8, 
  (SELECT id FROM teams WHERE abbreviation = 'HOU'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (141542125, 'Pat Connaughton', 'G', 33.1, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (222261393, 'Duop Reath', 'C', 29.6, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (595867392, 'David Jones Garcia', 'F', 24.2, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (551938829, 'Kobe Brown', 'F', 26.1, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (200817310, 'Chris Paul', 'G', 40.8, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (197960561, 'Trey Alexander', 'G', 22.8, 
  (SELECT id FROM teams WHERE abbreviation = 'NOP'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (287374737, 'Miles Kelly', 'G', 23.0, 
  (SELECT id FROM teams WHERE abbreviation = 'DAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (369735974, 'Julian Phillips', 'F', 22.3, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (633898203, 'Carter Bryant', 'F', 20.2, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (125396497, 'AJ Johnson', 'G', 21.2, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (516502075, 'Jonathan Isaac', 'F', 28.3, 
  (SELECT id FROM teams WHERE abbreviation = 'ORL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (445666992, 'Alijah Martin', 'G', 24.1, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (698626142, 'Jamal Cain', 'F', 26.9, 
  (SELECT id FROM teams WHERE abbreviation = 'ORL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (994975065, 'Kevon Looney', 'F', 30.0, 
  (SELECT id FROM teams WHERE abbreviation = 'NOP'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (523750867, 'Guerschon Yabusele', 'F', 30.1, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (870260299, 'Christian Koloko', 'C', 25.6, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (635285569, 'Jae''Sean Tate', 'F', 30.3, 
  (SELECT id FROM teams WHERE abbreviation = 'HOU'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (513778582, 'Gary Harris', 'G', 31.4, 
  (SELECT id FROM teams WHERE abbreviation = 'MIL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (476205220, 'Elijah Harkless', 'G', 26.0, 
  (SELECT id FROM teams WHERE abbreviation = 'UTA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (928661588, 'Rasheer Fleming', 'F', 21.6, 
  (SELECT id FROM teams WHERE abbreviation = 'PHX'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (387165950, 'Amir Coffey', 'G-F', 28.6, 
  (SELECT id FROM teams WHERE abbreviation = 'MIL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (410877539, 'Kam Jones', 'G', 24.0, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (793242540, 'Mohamed Diawara', 'F', 20.8, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (168766212, 'Jeff Green', 'F', 39.4, 
  (SELECT id FROM teams WHERE abbreviation = 'HOU'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (234176299, 'Luke Travers', 'F', 24.4, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (532956820, 'Caleb Houstan', 'G', 23.1, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (373294203, 'Leonard Miller', 'F', 22.2, 
  (SELECT id FROM teams WHERE abbreviation = 'MIN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (196101396, 'Yang Hansen', 'C', 20.6, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (415127130, 'Chris Boucher', 'F', 33.1, 
  (SELECT id FROM teams WHERE abbreviation = 'BOS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (353972758, 'Hunter Tyson', 'F', 25.7, 
  (SELECT id FROM teams WHERE abbreviation = 'DEN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (575375268, 'E.J. Liddell', 'F', 25.1, 
  (SELECT id FROM teams WHERE abbreviation = 'BKN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (762325105, 'Isaiah Livers', 'F', 27.5, 
  (SELECT id FROM teams WHERE abbreviation = 'PHX'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (627999712, 'Xavier Tillman', 'F', 27.1, 
  (SELECT id FROM teams WHERE abbreviation = 'BOS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (414083161, 'Kevin McCullar Jr.', 'G', 24.9, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (568212422, 'Bobi Klintman', 'F', 22.9, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (850464261, 'Jahmir Young', 'G', 25.3, 
  (SELECT id FROM teams WHERE abbreviation = 'MIA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (705964517, 'Tristan Enaruna', 'F', 24.6, 
  (SELECT id FROM teams WHERE abbreviation = 'CLE'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (494762513, 'Isaiah Stevens', 'G', 25.3, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (918225069, 'LJ Cryer', 'G', 24.3, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (975188511, 'Vladislav Goldin', 'C', 24.7, 
  (SELECT id FROM teams WHERE abbreviation = 'MIA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (263663110, 'Trentyn Flowers', 'F', 20.9, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (209953720, 'Isaac Jones', 'F', 25.6, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (445834930, 'Wendell Moore Jr.', 'G', 24.4, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (542695491, 'Maxi Kleber', 'F', 34.0, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (546246496, 'Koby Brea', 'G', 23.3, 
  (SELECT id FROM teams WHERE abbreviation = 'PHX'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (974496771, 'JD Davison', 'G', 23.3, 
  (SELECT id FROM teams WHERE abbreviation = 'HOU'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (685915980, 'Colby Jones', 'G', 23.7, 
  (SELECT id FROM teams WHERE abbreviation = 'DET'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (379139541, 'Johnny Juzang', 'G', 24.9, 
  (SELECT id FROM teams WHERE abbreviation = 'MIN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (564144421, 'Jordan McLaughlin', 'G', 29.8, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (580354400, 'Anthony Gill', 'F', 33.3, 
  (SELECT id FROM teams WHERE abbreviation = 'WAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (585774508, 'Hunter Dickinson', 'C', 25.2, 
  (SELECT id FROM teams WHERE abbreviation = 'NOP'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (717174537, 'Ariel Hukporti', 'C', 23.8, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (791394264, 'Chris Youngblood', 'G', 24.0, 
  (SELECT id FROM teams WHERE abbreviation = 'OKC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (722892925, 'Lindy Waters III', 'F', 28.5, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (23257304, 'Mason Plumlee', 'F-C', 35.9, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (33238245, 'Bronny James', 'G', 21.3, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (465477467, 'PJ Hall', 'C', 24.0, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (875849057, 'Taelon Peter', 'G', 23.9, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (900730129, 'Javonte Cooke', 'G', 26.6, 
  (SELECT id FROM teams WHERE abbreviation = 'POR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (935340273, 'Cody Martin', 'F', 30.4, 
  (SELECT id FROM teams WHERE abbreviation = 'IND'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (71575806, 'Orlando Robinson', 'C', 25.6, 
  (SELECT id FROM teams WHERE abbreviation = 'ORL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (588850704, 'Harrison Ingram', 'F', 23.2, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (494801038, 'Amari Williams', 'F-C', 24.0, 
  (SELECT id FROM teams WHERE abbreviation = 'BOS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (23149333, 'Jacob Toppin', 'F', 25.8, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (948825104, 'Brooks Barnhizer', 'G', 23.9, 
  (SELECT id FROM teams WHERE abbreviation = 'OKC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (726440329, 'Curtis Jones', 'G', 24.3, 
  (SELECT id FROM teams WHERE abbreviation = 'DEN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (38550882, 'Tyson Etienne', 'G', 20.0, 
  (SELECT id FROM teams WHERE abbreviation = 'BKN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (223002299, 'Andre Jackson Jr.', 'G', 24.2, 
  (SELECT id FROM teams WHERE abbreviation = 'MIL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (883201994, 'Isaiah Crawford', 'F', 24.3, 
  (SELECT id FROM teams WHERE abbreviation = 'HOU'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (300969231, 'Jahmai Mashack', 'G', 23.2, 
  (SELECT id FROM teams WHERE abbreviation = 'MEM'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (738646635, 'Jonathan Mogbo', 'F', 24.3, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (228352588, 'Adou Thiero', 'G', 21.8, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (844672776, 'Nigel Hayes-Davis', 'F', 31.2, 
  (SELECT id FROM teams WHERE abbreviation = 'PHX'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (404152269, 'Thanasis Antetokounmpo', 'F', 33.6, 
  (SELECT id FROM teams WHERE abbreviation = 'MIL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (878669202, 'Malevy Leons', 'F', 26.4, 
  (SELECT id FROM teams WHERE abbreviation = 'GSW'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (366016454, 'Lachlan Olbrich', 'C', 22.1, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (854016735, 'Johni Broome', 'F', 23.6, 
  (SELECT id FROM teams WHERE abbreviation = 'PHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (951331283, 'Khaman Maluach', 'C', 19.4, 
  (SELECT id FROM teams WHERE abbreviation = 'PHX'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (233275695, 'Dillon Jones', 'F', 24.3, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (103528788, 'Kyle Lowry', 'G', 39.9, 
  (SELECT id FROM teams WHERE abbreviation = 'PHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (918572784, 'Hunter Sallis', 'G', 22.9, 
  (SELECT id FROM teams WHERE abbreviation = 'PHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (209953720, 'Isaac Jones', 'F', 25.6, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (100263867, 'Dario Saric', 'F-C', 31.8, 
  (SELECT id FROM teams WHERE abbreviation = 'SAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (936022619, 'Trey Jemison', 'C', 26.2, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (425998170, 'Drew Peterson', 'F', 26.2, 
  (SELECT id FROM teams WHERE abbreviation = 'CHA'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (643291938, 'N''Faly Dante', 'C', 24.3, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (316492788, 'Bismack Biyombo', 'C', 33.4, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (224338295, 'Pacome Dadiet', 'F', 20.5, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (905647799, 'Joe Ingles', 'F-G', 38.4, 
  (SELECT id FROM teams WHERE abbreviation = 'MIN'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (191959783, 'Garrett Temple', 'G-F', 39.8, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (410322112, 'Jahmyl Telfort', 'G', 24.8, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (41996150, 'Max Shulga', 'G', 23.6, 
  (SELECT id FROM teams WHERE abbreviation = 'BOS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (477718547, 'Stanley Umude', 'G', 26.8, 
  (SELECT id FROM teams WHERE abbreviation = 'SAS'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (914107269, 'RayJ Dennis', 'G', 24.9, 
  (SELECT id FROM teams WHERE abbreviation = 'ATL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (709441821, 'Mo Bamba', 'C', 27.7, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (914107269, 'RayJ Dennis', 'G', 24.9, 
  (SELECT id FROM teams WHERE abbreviation = 'LAC'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (487083535, 'Chucky Hepburn', 'G', 23.0, 
  (SELECT id FROM teams WHERE abbreviation = 'TOR'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (428706229, 'Tosan Evbuomwan', 'F', 25.0, 
  (SELECT id FROM teams WHERE abbreviation = 'NYK'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (841570747, 'Noa Essengue', 'F', 19.1, 
  (SELECT id FROM teams WHERE abbreviation = 'CHI'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (124473646, 'Chris Manon', 'G', 24.2, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;
INSERT INTO players (nba_id, full_name, position, age, team_id, is_active) 
VALUES (870260299, 'Christian Koloko', 'C', 25.6, 
  (SELECT id FROM teams WHERE abbreviation = 'LAL'), TRUE) 
ON CONFLICT (nba_id) DO UPDATE SET 
  full_name = EXCLUDED.full_name, 
  position = EXCLUDED.position, 
  age = EXCLUDED.age, 
  team_id = EXCLUDED.team_id;

-- Generating SQL for player season stats
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 4044701), '2025-26', 42, 35.5, 32.8, 8.5, 7.8, 1.5, 0.5, 4.3, 37.9, 16.2, 456, 0.781, 491, 0.587, 432, 0.345, 0.554, 0.614, 40.7, 41.4, 49.2, 14.6, 120.3, 110.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 1916077), '2025-26', 49, 33.3, 31.8, 6.4, 4.4, 1.3, 0.8, 2.1, 33.5, 9.6, 452, 0.892, 741, 0.603, 223, 0.39, 0.599, 0.67, 36.2, 38.2, 42.7, 11.6, 134.5, 106.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 512615490), '2025-26', 43, 35.5, 29.8, 3.7, 5.3, 1.3, 0.8, 2.6, 31.5, 11.2, 321, 0.794, 530, 0.555, 361, 0.404, 0.576, 0.62, 35.0, 33.5, 38.8, 9.4, 120.0, 112.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 177001298), '2025-26', 47, 34.3, 29.5, 4.7, 7.0, 1.0, 0.4, 3.7, 36.9, 14.0, 334, 0.769, 780, 0.531, 280, 0.357, 0.532, 0.574, 36.5, 34.2, 41.2, 11.5, 113.4, 107.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 426511720), '2025-26', 36, 34.4, 29.1, 10.5, 12.1, 1.4, 0.7, 3.5, 30.9, 16.6, 274, 0.843, 449, 0.664, 177, 0.418, 0.653, 0.703, 41.3, 39.6, 51.8, 18.0, 140.3, 107.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 50708347), '2025-26', 49, 38.8, 28.8, 6.9, 4.1, 2.0, 0.8, 2.4, 28.9, 10.1, 284, 0.887, 622, 0.532, 432, 0.384, 0.55, 0.599, 32.9, 35.7, 39.8, 9.6, 123.2, 113.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 953759771), '2025-26', 48, 33.8, 28.8, 5.9, 4.6, 1.5, 0.2, 3.1, 32.4, 13.0, 285, 0.846, 527, 0.575, 467, 0.381, 0.573, 0.617, 33.4, 34.7, 39.3, 10.9, 120.2, 111.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 36375717), '2025-26', 30, 29.2, 28.0, 5.6, 10.0, 0.9, 0.7, 3.3, 36.3, 17.0, 298, 0.658, 449, 0.666, 38, 0.395, 0.66, 0.679, 38.0, 33.6, 43.6, 15.9, 128.3, 108.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 840479685), '2025-26', 38, 32.8, 27.7, 3.7, 6.2, 2.0, 0.6, 2.1, 32.9, 9.9, 234, 0.919, 475, 0.558, 264, 0.386, 0.566, 0.624, 33.9, 31.4, 37.6, 10.5, 123.4, 114.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 312918140), '2025-26', 39, 31.3, 27.2, 4.8, 3.5, 1.1, 0.4, 2.8, 32.7, 13.0, 204, 0.931, 296, 0.584, 448, 0.391, 0.585, 0.636, 30.7, 32.1, 35.6, 9.8, 119.8, 112.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 598295820), '2025-26', 38, 35.2, 27.1, 2.2, 6.9, 1.0, 0.5, 1.5, 27.8, 7.2, 252, 0.889, 437, 0.556, 296, 0.361, 0.55, 0.611, 34.1, 29.3, 36.2, 8.5, 123.2, 121.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 212869647), '2025-26', 47, 34.5, 27.1, 6.1, 3.3, 0.7, 0.1, 2.2, 31.0, 9.7, 276, 0.848, 601, 0.524, 365, 0.373, 0.537, 0.585, 30.3, 33.1, 36.4, 9.5, 122.6, 113.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 682429996), '2025-26', 25, 34.3, 26.5, 5.9, 5.2, 1.0, 0.2, 3.3, 29.1, 17.0, 214, 0.869, 216, 0.63, 183, 0.372, 0.596, 0.671, 31.7, 32.4, 37.6, 10.9, 127.1, 114.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 399231891), '2025-26', 30, 31.3, 26.4, 3.9, 7.4, 0.7, 1.1, 3.0, 33.7, 14.2, 255, 0.859, 428, 0.547, 116, 0.302, 0.527, 0.603, 33.8, 30.3, 37.8, 11.7, 119.4, 111.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 768328999), '2025-26', 1, 31.5, 26.0, 5.0, 11.0, 0.0, 4.0, 2.0, 22.4, 12.3, 2, 0.5, 6, 0.833, 8, 0.625, 0.893, 0.874, 37.0, 31.0, 42.0, 14.3, 159.4, 114.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 892440087), '2025-26', 47, 36.6, 26.0, 4.4, 5.3, 0.9, 0.9, 3.1, 27.0, 14.5, 287, 0.885, 579, 0.558, 267, 0.404, 0.573, 0.629, 31.4, 30.5, 35.8, 9.3, 123.9, 111.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 775183336), '2025-26', 47, 35.8, 25.9, 7.5, 4.3, 1.0, 0.4, 2.3, 28.7, 11.0, 234, 0.88, 533, 0.522, 352, 0.432, 0.572, 0.616, 30.2, 33.4, 37.7, 10.5, 124.8, 117.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 208939123), '2025-26', 44, 34.6, 25.5, 6.7, 7.2, 0.8, 0.6, 3.9, 29.0, 18.9, 419, 0.8, 455, 0.534, 281, 0.356, 0.534, 0.609, 32.7, 32.2, 39.3, 12.4, 119.8, 111.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 142020281), '2025-26', 41, 34.0, 25.4, 6.2, 4.0, 0.9, 0.3, 3.3, 31.4, 15.4, 330, 0.864, 530, 0.517, 224, 0.313, 0.503, 0.58, 29.5, 31.7, 35.7, 10.1, 117.4, 111.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 756899587), '2025-26', 44, 35.4, 25.4, 8.1, 4.8, 1.3, 0.4, 3.7, 31.3, 17.4, 374, 0.901, 382, 0.492, 389, 0.347, 0.506, 0.598, 30.2, 33.5, 38.4, 11.3, 119.6, 115.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 701855967), '2025-26', 45, 35.0, 25.1, 9.7, 5.5, 1.4, 0.8, 3.7, 30.6, 16.3, 320, 0.806, 604, 0.518, 256, 0.32, 0.507, 0.565, 30.6, 34.8, 40.3, 12.6, 117.7, 105.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 333716950), '2025-26', 40, 33.1, 25.1, 3.2, 7.2, 1.1, 0.3, 2.5, 30.4, 11.7, 174, 0.851, 367, 0.564, 380, 0.387, 0.572, 0.609, 32.3, 28.3, 35.5, 10.1, 115.7, 113.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 987752519), '2025-26', 37, 29.1, 24.2, 2.8, 11.1, 0.9, 2.7, 2.7, 32.1, 14.2, 264, 0.811, 423, 0.57, 180, 0.367, 0.564, 0.622, 35.3, 26.9, 38.1, 12.5, 119.0, 100.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 289624485), '2025-26', 47, 34.4, 24.2, 6.6, 3.9, 1.1, 0.3, 3.3, 27.7, 16.8, 338, 0.893, 458, 0.517, 318, 0.377, 0.537, 0.614, 28.1, 30.8, 34.7, 9.9, 118.3, 120.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 491526573), '2025-26', 49, 33.9, 23.7, 4.0, 6.8, 1.1, 0.5, 2.2, 29.1, 10.6, 292, 0.685, 667, 0.522, 239, 0.372, 0.531, 0.562, 30.5, 27.7, 34.5, 10.2, 111.9, 112.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 849065736), '2025-26', 48, 35.6, 23.2, 8.2, 10.6, 1.2, 0.5, 3.5, 27.1, 16.8, 263, 0.776, 602, 0.556, 226, 0.354, 0.55, 0.59, 33.9, 31.4, 42.0, 14.2, 116.6, 110.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 419572900), '2025-26', 44, 30.8, 23.0, 2.6, 3.6, 1.2, 0.2, 2.0, 27.3, 10.9, 246, 0.846, 398, 0.54, 318, 0.393, 0.562, 0.615, 26.7, 25.6, 29.3, 7.8, 116.5, 110.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 181083693), '2025-26', 3, 20.2, 22.3, 7.0, 2.7, 1.0, 0.0, 1.7, 33.6, 12.1, 19, 0.842, 20, 0.75, 16, 0.438, 0.708, 0.755, 25.0, 29.3, 32.0, 14.8, 151.3, 107.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 771899853), '2025-26', 53, 33.5, 22.2, 5.4, 6.9, 1.1, 0.2, 2.6, 26.5, 14.0, 333, 0.823, 588, 0.56, 251, 0.323, 0.537, 0.596, 29.0, 27.6, 34.5, 11.2, 121.6, 108.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 116946476), '2025-26', 50, 35.9, 22.2, 3.7, 5.8, 1.5, 0.3, 1.9, 23.1, 10.3, 190, 0.895, 392, 0.582, 426, 0.378, 0.574, 0.615, 28.0, 25.9, 31.7, 8.7, 122.3, 117.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 912818761), '2025-26', 51, 34.2, 22.2, 3.7, 5.9, 0.8, 0.8, 2.5, 27.4, 12.6, 233, 0.837, 631, 0.515, 258, 0.368, 0.526, 0.57, 28.0, 25.9, 31.8, 9.2, 110.0, 111.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 397621878), '2025-26', 26, 32.8, 22.2, 3.6, 6.1, 1.1, 0.3, 1.8, 26.3, 10.3, 172, 0.826, 305, 0.521, 106, 0.368, 0.529, 0.593, 28.3, 25.8, 31.9, 9.6, 121.0, 111.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 390881139), '2025-26', 1, 32.0, 22.0, 3.0, 2.0, 0.0, 1.0, 3.0, 23.7, 16.7, 0, 0.0, 2, 1.0, 13, 0.462, 0.733, 0.733, 24.0, 25.0, 27.0, 6.4, 113.4, 122.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 161738336), '2025-26', 11, 31.7, 21.9, 2.7, 4.7, 1.0, 0.5, 1.5, 25.1, 8.6, 41, 0.902, 114, 0.579, 67, 0.358, 0.564, 0.605, 26.6, 24.6, 29.4, 8.2, 117.2, 110.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 423598628), '2025-26', 33, 33.1, 21.8, 6.7, 5.6, 1.1, 0.6, 2.9, 28.2, 15.4, 181, 0.74, 385, 0.579, 149, 0.315, 0.55, 0.587, 27.5, 28.6, 34.2, 11.3, 116.8, 115.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 147816302), '2025-26', 38, 29.7, 21.6, 3.4, 6.2, 1.0, 0.6, 2.3, 27.4, 14.2, 309, 0.709, 515, 0.584, 3, 0.0, 0.581, 0.628, 27.8, 25.0, 31.2, 10.4, 123.5, 115.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 154759253), '2025-26', 40, 34.3, 21.6, 4.8, 8.6, 0.7, 0.7, 2.8, 26.9, 15.0, 316, 0.766, 482, 0.512, 145, 0.297, 0.497, 0.565, 30.2, 26.5, 35.0, 11.2, 112.6, 111.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 936926511), '2025-26', 48, 30.0, 21.4, 2.6, 4.4, 1.4, 0.1, 3.0, 30.3, 14.5, 194, 0.784, 550, 0.518, 297, 0.34, 0.515, 0.55, 25.8, 24.0, 28.4, 8.3, 105.7, 113.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 808447614), '2025-26', 46, 31.1, 21.0, 1.8, 3.7, 1.1, 0.2, 1.8, 28.3, 9.6, 179, 0.855, 483, 0.493, 313, 0.358, 0.51, 0.552, 24.7, 22.7, 26.4, 6.7, 110.0, 107.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 999085850), '2025-26', 43, 33.9, 20.9, 6.2, 9.4, 1.4, 1.0, 3.2, 27.3, 16.5, 257, 0.689, 619, 0.523, 83, 0.289, 0.513, 0.55, 30.3, 27.1, 36.5, 12.6, 116.6, 104.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 956807990), '2025-26', 47, 34.2, 20.4, 4.2, 6.6, 1.2, 0.8, 2.2, 25.0, 12.0, 214, 0.804, 590, 0.539, 168, 0.298, 0.518, 0.562, 27.0, 24.6, 31.2, 9.7, 112.1, 109.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 227188386), '2025-26', 20, 31.3, 20.4, 2.8, 11.1, 1.1, 1.7, 2.1, 27.6, 10.9, 81, 0.728, 297, 0.535, 37, 0.27, 0.521, 0.551, 31.4, 23.2, 34.2, 11.0, 111.9, 106.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 590633997), '2025-26', 51, 33.0, 20.4, 3.5, 3.5, 1.2, 0.6, 2.0, 24.6, 11.1, 197, 0.878, 387, 0.509, 416, 0.377, 0.539, 0.583, 23.8, 23.9, 27.4, 7.6, 112.5, 115.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 99088424), '2025-26', 35, 30.0, 20.4, 3.3, 4.6, 1.0, 0.9, 2.6, 29.0, 13.8, 134, 0.881, 296, 0.493, 277, 0.365, 0.519, 0.564, 25.0, 23.7, 28.3, 9.0, 111.1, 109.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 100528206), '2025-26', 38, 31.1, 20.0, 4.9, 5.6, 1.4, 0.2, 1.6, 23.2, 11.5, 287, 0.864, 376, 0.553, 85, 0.376, 0.555, 0.647, 25.6, 24.9, 30.4, 10.5, 137.2, 114.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 533588179), '2025-26', 48, 31.5, 19.9, 2.9, 11.9, 0.9, 0.6, 2.5, 25.8, 15.0, 293, 0.853, 456, 0.518, 219, 0.356, 0.523, 0.595, 31.8, 22.8, 34.7, 11.2, 121.1, 101.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 411446299), '2025-26', 42, 32.5, 19.6, 6.3, 4.0, 1.2, 0.3, 2.5, 25.1, 14.0, 162, 0.79, 393, 0.557, 245, 0.351, 0.545, 0.581, 23.6, 25.9, 29.9, 9.7, 116.6, 108.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 604791180), '2025-26', 20, 28.4, 19.5, 8.1, 3.3, 1.0, 0.3, 3.6, 32.3, 18.0, 117, 0.897, 237, 0.473, 85, 0.235, 0.441, 0.521, 22.7, 27.5, 30.8, 11.3, 107.1, 112.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 130960356), '2025-26', 10, 28.0, 19.3, 8.9, 1.5, 1.0, 0.1, 2.6, 28.8, 16.1, 73, 0.863, 76, 0.5, 59, 0.305, 0.481, 0.577, 20.8, 28.2, 29.7, 9.1, 120.2, 115.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 260160363), '2025-26', 52, 34.5, 19.3, 5.6, 8.3, 1.3, 1.5, 2.7, 24.0, 15.5, 214, 0.813, 613, 0.555, 160, 0.306, 0.535, 0.577, 27.6, 24.9, 33.2, 11.2, 115.7, 107.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 151383542), '2025-26', 39, 31.4, 19.2, 2.3, 2.8, 0.7, 0.3, 1.9, 23.9, 11.9, 142, 0.88, 293, 0.556, 254, 0.39, 0.569, 0.614, 21.9, 21.5, 24.2, 6.3, 114.3, 119.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 920719275), '2025-26', 45, 30.7, 19.2, 1.9, 5.8, 1.0, 1.5, 2.2, 25.5, 13.0, 187, 0.797, 450, 0.531, 220, 0.359, 0.534, 0.574, 25.0, 21.1, 26.9, 7.8, 107.9, 105.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 517908425), '2025-26', 50, 33.9, 19.2, 4.3, 4.3, 0.9, 0.5, 2.1, 23.4, 12.4, 182, 0.934, 502, 0.52, 253, 0.356, 0.525, 0.576, 23.5, 23.5, 27.8, 8.4, 116.0, 110.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 667749633), '2025-26', 42, 27.5, 19.1, 7.5, 4.9, 1.1, 0.2, 3.1, 32.0, 15.7, 109, 0.881, 310, 0.455, 389, 0.365, 0.506, 0.538, 24.1, 26.6, 31.5, 12.9, 113.2, 107.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 33531839), '2025-26', 53, 32.7, 19.0, 3.9, 3.2, 1.2, 0.2, 1.2, 22.1, 8.1, 297, 0.862, 592, 0.537, 111, 0.342, 0.533, 0.603, 22.2, 22.9, 26.1, 7.6, 125.2, 119.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 240706148), '2025-26', 36, 29.0, 18.8, 2.4, 3.5, 0.7, 0.7, 2.1, 25.0, 13.9, 228, 0.833, 254, 0.488, 215, 0.372, 0.52, 0.595, 22.3, 21.3, 24.8, 7.5, 118.5, 112.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 870314837), '2025-26', 35, 30.9, 18.8, 3.6, 3.5, 0.7, 0.3, 1.7, 24.4, 9.9, 102, 0.804, 285, 0.505, 244, 0.393, 0.544, 0.573, 22.3, 22.4, 25.9, 8.0, 115.0, 120.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 55753057), '2025-26', 51, 32.0, 18.8, 3.5, 5.5, 0.7, 0.2, 2.2, 22.2, 14.3, 145, 0.897, 287, 0.568, 396, 0.424, 0.608, 0.643, 24.3, 22.4, 27.8, 8.9, 123.6, 111.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 934984359), '2025-26', 29, 29.1, 18.6, 4.7, 3.7, 0.7, 0.1, 3.0, 27.5, 18.3, 154, 0.805, 185, 0.541, 208, 0.346, 0.529, 0.586, 22.3, 23.3, 27.0, 9.4, 108.5, 113.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 928958550), '2025-26', 34, 32.1, 18.6, 8.8, 8.6, 0.9, 0.3, 3.6, 25.9, 20.5, 178, 0.775, 309, 0.511, 161, 0.366, 0.524, 0.575, 27.1, 27.4, 35.9, 14.0, 114.9, 114.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 556661055), '2025-26', 29, 29.4, 18.6, 3.5, 5.2, 0.8, 0.3, 1.7, 26.0, 10.6, 134, 0.701, 260, 0.562, 151, 0.338, 0.541, 0.573, 23.8, 22.1, 27.3, 9.5, 114.0, 108.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 119346795), '2025-26', 51, 32.4, 18.3, 3.5, 6.1, 0.5, 0.5, 1.4, 22.9, 8.8, 184, 0.837, 412, 0.539, 335, 0.331, 0.52, 0.562, 24.4, 21.7, 27.9, 9.0, 119.7, 112.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 238903652), '2025-26', 45, 31.2, 18.1, 2.7, 9.8, 1.0, 0.7, 1.8, 23.7, 10.9, 205, 0.79, 442, 0.489, 211, 0.346, 0.498, 0.547, 27.9, 20.8, 30.6, 10.0, 112.1, 108.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 897537140), '2025-26', 26, 30.5, 18.0, 6.9, 2.4, 0.8, 0.1, 2.8, 25.4, 16.2, 79, 0.861, 213, 0.521, 164, 0.36, 0.529, 0.567, 20.4, 24.9, 27.3, 8.8, 114.0, 115.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 355971779), '2025-26', 42, 33.4, 17.9, 4.0, 8.8, 0.9, 2.0, 2.1, 21.9, 13.4, 192, 0.635, 410, 0.593, 158, 0.304, 0.555, 0.576, 26.7, 22.0, 30.7, 10.3, 117.7, 109.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 870314837), '2025-26', 13, 27.8, 17.8, 3.3, 3.2, 0.7, 0.7, 1.7, 27.2, 9.9, 33, 0.667, 118, 0.534, 81, 0.346, 0.528, 0.543, 21.1, 21.2, 24.4, 8.2, 105.5, 116.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 536485881), '2025-26', 28, 31.8, 17.8, 2.3, 5.4, 0.6, 0.1, 2.3, 23.1, 15.2, 146, 0.884, 202, 0.48, 156, 0.372, 0.514, 0.589, 23.1, 20.0, 25.4, 7.6, 109.9, 112.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 418623258), '2025-26', 50, 37.2, 17.8, 5.5, 7.6, 1.4, 0.6, 2.5, 20.4, 15.6, 240, 0.783, 596, 0.545, 85, 0.2, 0.515, 0.565, 25.4, 23.3, 30.9, 9.7, 121.3, 110.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 454022355), '2025-26', 23, 27.9, 17.7, 2.5, 6.2, 0.7, 0.2, 1.0, 23.6, 8.1, 109, 0.789, 168, 0.577, 105, 0.4, 0.586, 0.632, 23.8, 20.2, 26.3, 9.3, 128.9, 114.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 758647315), '2025-26', 43, 27.9, 17.7, 1.7, 10.5, 0.9, 0.8, 1.9, 22.6, 14.8, 227, 0.731, 473, 0.63, 0, 0.0, 0.63, 0.665, 28.3, 19.5, 30.0, 9.8, 130.3, 100.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 311471180), '2025-26', 45, 29.2, 17.7, 1.6, 8.6, 0.5, 2.0, 1.6, 22.3, 12.0, 180, 0.772, 363, 0.661, 165, 0.358, 0.622, 0.655, 26.2, 19.3, 27.8, 8.6, 125.5, 100.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 150668179), '2025-26', 41, 32.2, 17.4, 7.5, 2.9, 0.9, 0.2, 2.4, 23.5, 14.9, 171, 0.813, 346, 0.494, 214, 0.364, 0.514, 0.563, 20.4, 25.0, 27.9, 9.0, 115.2, 115.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 486878004), '2025-26', 50, 34.3, 17.4, 5.5, 4.5, 1.2, 1.4, 1.9, 23.3, 10.7, 138, 0.899, 328, 0.476, 445, 0.324, 0.481, 0.521, 21.8, 22.9, 27.4, 8.8, 115.9, 114.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 813463214), '2025-26', 40, 28.3, 17.3, 2.8, 7.7, 0.8, 2.1, 1.7, 25.4, 10.9, 132, 0.697, 444, 0.538, 118, 0.339, 0.532, 0.556, 24.9, 20.0, 27.7, 10.2, 114.0, 116.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 822007861), '2025-26', 51, 32.7, 17.3, 5.3, 4.2, 0.7, 0.1, 1.1, 21.2, 7.4, 101, 0.861, 349, 0.57, 368, 0.359, 0.554, 0.579, 21.5, 22.5, 26.7, 8.9, 128.7, 115.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 464588370), '2025-26', 25, 33.5, 17.1, 7.5, 5.2, 2.3, 0.4, 3.2, 24.4, 19.5, 104, 0.856, 219, 0.511, 115, 0.33, 0.506, 0.562, 22.2, 24.6, 29.8, 10.4, 112.0, 112.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 509674317), '2025-26', 17, 24.3, 17.1, 2.7, 5.1, 0.5, 1.3, 0.9, 26.5, 7.1, 81, 0.84, 124, 0.524, 86, 0.36, 0.531, 0.592, 22.2, 19.8, 24.9, 10.2, 122.7, 106.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 291613868), '2025-26', 50, 32.5, 17.1, 6.1, 4.4, 1.3, 0.1, 1.7, 21.6, 11.0, 159, 0.805, 319, 0.517, 351, 0.376, 0.542, 0.577, 21.5, 23.2, 27.6, 9.5, 119.9, 111.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 460407599), '2025-26', 35, 30.3, 17.0, 4.0, 3.0, 1.4, 0.3, 1.7, 22.9, 11.1, 101, 0.842, 154, 0.519, 317, 0.369, 0.542, 0.578, 20.1, 21.0, 24.1, 7.8, 119.5, 111.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 848262199), '2025-26', 50, 32.0, 16.9, 5.5, 4.6, 1.5, 0.4, 2.3, 23.7, 14.3, 103, 0.757, 402, 0.507, 294, 0.408, 0.552, 0.571, 21.5, 22.4, 27.0, 9.4, 112.9, 112.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 490894689), '2025-26', 48, 30.8, 16.9, 3.8, 9.0, 0.7, 0.6, 1.4, 21.7, 9.5, 74, 0.838, 442, 0.568, 218, 0.376, 0.567, 0.585, 25.9, 20.6, 29.6, 10.8, 120.5, 113.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 871615538), '2025-26', 24, 29.6, 16.8, 5.6, 4.8, 1.3, 0.4, 2.0, 25.5, 12.3, 84, 0.833, 276, 0.507, 60, 0.3, 0.497, 0.542, 21.6, 22.5, 27.2, 10.4, 112.6, 103.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 589931876), '2025-26', 47, 30.5, 16.7, 2.5, 5.8, 1.0, 0.0, 0.6, 20.8, 4.8, 188, 0.846, 346, 0.523, 253, 0.348, 0.523, 0.576, 22.5, 19.2, 25.0, 8.2, 126.3, 119.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 767465645), '2025-26', 41, 33.0, 16.6, 2.4, 5.5, 1.7, 0.7, 2.1, 20.2, 14.5, 145, 0.8, 269, 0.572, 230, 0.37, 0.564, 0.603, 22.0, 18.9, 24.4, 7.3, 117.0, 109.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 368554620), '2025-26', 41, 30.8, 16.5, 7.0, 5.0, 1.3, 0.3, 3.4, 25.1, 21.6, 242, 0.723, 351, 0.53, 154, 0.279, 0.496, 0.553, 21.5, 23.4, 28.4, 10.8, 110.3, 103.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 806515634), '2025-26', 47, 32.0, 16.3, 3.3, 7.9, 1.2, 1.0, 2.0, 20.6, 13.6, 128, 0.781, 335, 0.57, 256, 0.367, 0.562, 0.59, 24.1, 19.6, 27.5, 9.4, 115.1, 107.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 371453698), '2025-26', 27, 30.5, 16.0, 3.7, 5.2, 1.5, 0.5, 1.6, 22.2, 11.0, 76, 0.855, 181, 0.464, 173, 0.382, 0.517, 0.556, 21.1, 19.7, 24.9, 8.9, 113.9, 109.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 632714953), '2025-26', 19, 29.7, 15.8, 4.1, 11.4, 0.9, 0.2, 2.7, 23.2, 18.7, 77, 0.727, 194, 0.593, 27, 0.185, 0.554, 0.59, 27.2, 19.9, 31.3, 12.2, 116.5, 107.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 421323361), '2025-26', 50, 31.0, 15.8, 4.1, 4.1, 1.3, 0.7, 2.2, 22.2, 15.1, 187, 0.743, 384, 0.526, 240, 0.346, 0.523, 0.561, 19.9, 19.9, 24.0, 8.3, 109.9, 109.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 856424435), '2025-26', 48, 31.3, 15.8, 2.8, 4.9, 1.2, 1.0, 1.8, 20.2, 11.9, 108, 0.787, 388, 0.518, 231, 0.394, 0.545, 0.57, 20.7, 18.6, 23.5, 7.7, 112.9, 110.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 538879121), '2025-26', 52, 34.5, 15.7, 4.1, 4.1, 1.5, 0.8, 1.1, 17.3, 7.8, 62, 0.806, 362, 0.588, 292, 0.39, 0.587, 0.6, 19.9, 19.8, 24.0, 7.4, 128.5, 113.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 477314888), '2025-26', 24, 24.2, 15.6, 3.1, 1.8, 0.2, 0.1, 2.0, 30.2, 13.5, 107, 0.841, 191, 0.445, 117, 0.325, 0.461, 0.527, 17.4, 18.7, 20.5, 7.3, 104.8, 120.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 541937949), '2025-26', 48, 28.8, 15.4, 4.7, 5.4, 0.8, 0.2, 2.2, 22.0, 15.4, 151, 0.748, 491, 0.56, 90, 0.289, 0.54, 0.572, 20.9, 20.1, 25.6, 10.2, 113.4, 109.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 897225529), '2025-26', 50, 29.4, 15.2, 6.6, 5.8, 1.4, 0.2, 3.4, 25.7, 20.5, 141, 0.702, 358, 0.497, 294, 0.344, 0.505, 0.531, 20.9, 21.8, 27.5, 11.4, 104.5, 114.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 116155525), '2025-26', 47, 35.7, 15.2, 4.2, 5.4, 1.6, 0.5, 1.8, 19.0, 12.1, 111, 0.775, 349, 0.479, 271, 0.362, 0.506, 0.534, 20.6, 19.4, 24.8, 7.9, 113.1, 110.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 47138379), '2025-26', 51, 32.1, 15.1, 2.9, 4.3, 0.9, 0.9, 1.7, 18.1, 13.7, 125, 0.856, 385, 0.551, 177, 0.446, 0.588, 0.622, 19.3, 17.9, 22.2, 7.1, 120.7, 107.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 550536028), '2025-26', 41, 30.5, 15.1, 4.9, 5.5, 1.1, 0.9, 2.8, 22.2, 18.6, 108, 0.778, 275, 0.505, 229, 0.376, 0.532, 0.562, 20.7, 20.0, 25.6, 9.7, 108.0, 111.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 912772066), '2025-26', 49, 34.8, 15.1, 1.9, 6.8, 0.8, 1.0, 1.3, 17.9, 9.6, 126, 0.762, 309, 0.518, 304, 0.355, 0.525, 0.554, 21.9, 17.0, 23.8, 6.7, 118.7, 109.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 523750867), '2025-26', 1, 33.2, 15.0, 3.0, 11.0, 2.0, 0.0, 1.0, 15.2, 8.3, 0, 0.0, 5, 0.6, 6, 0.5, 0.682, 0.682, 26.0, 18.0, 29.0, 9.5, 141.8, 111.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 511118973), '2025-26', 45, 26.4, 15.0, 3.6, 3.0, 0.8, 0.3, 1.4, 21.1, 11.1, 105, 0.857, 293, 0.556, 193, 0.451, 0.604, 0.636, 18.1, 18.7, 21.7, 8.3, 124.6, 116.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 830640233), '2025-26', 52, 28.3, 15.0, 2.0, 5.3, 0.6, 1.4, 1.8, 21.5, 13.9, 148, 0.777, 308, 0.578, 282, 0.365, 0.564, 0.595, 20.3, 17.0, 22.3, 7.7, 111.2, 112.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 117028388), '2025-26', 49, 30.6, 14.9, 2.0, 4.9, 1.0, 1.2, 1.8, 20.3, 13.9, 176, 0.727, 352, 0.537, 180, 0.417, 0.567, 0.6, 19.8, 16.9, 21.8, 6.9, 113.1, 112.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 808649954), '2025-26', 50, 29.5, 14.8, 2.9, 5.0, 1.0, 0.1, 1.4, 19.0, 11.7, 193, 0.777, 367, 0.619, 147, 0.313, 0.576, 0.619, 19.9, 17.8, 22.8, 8.1, 122.4, 110.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 481803441), '2025-26', 19, 35.9, 14.6, 1.5, 6.1, 1.2, 1.6, 1.2, 18.6, 7.8, 38, 0.789, 167, 0.515, 92, 0.272, 0.477, 0.502, 20.7, 16.1, 22.2, 5.7, 104.2, 118.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 9634182), '2025-26', 23, 28.0, 14.6, 6.6, 4.5, 1.4, 0.1, 2.5, 22.9, 16.8, 46, 0.804, 145, 0.524, 142, 0.345, 0.521, 0.547, 19.1, 21.2, 25.7, 10.8, 116.1, 114.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 424717158), '2025-26', 53, 26.4, 14.5, 2.5, 6.4, 1.0, 0.9, 1.6, 22.0, 12.4, 80, 0.75, 272, 0.566, 338, 0.393, 0.58, 0.594, 20.8, 17.0, 23.3, 9.3, 115.8, 105.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 530401482), '2025-26', 28, 25.4, 14.5, 3.1, 1.8, 0.7, 0.3, 1.9, 25.5, 13.5, 97, 0.876, 127, 0.425, 211, 0.336, 0.475, 0.533, 16.3, 17.6, 19.4, 6.8, 106.1, 116.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 549644990), '2025-26', 5, 30.8, 14.4, 3.0, 10.8, 1.4, 1.8, 3.2, 16.6, 30.0, 20, 0.7, 29, 0.69, 8, 0.75, 0.784, 0.786, 25.2, 17.4, 28.2, 10.1, 130.3, 108.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 291102061), '2025-26', 43, 30.9, 14.4, 2.2, 11.0, 0.4, 0.8, 1.9, 19.0, 16.0, 132, 0.705, 429, 0.613, 0, 0.0, 0.613, 0.635, 25.4, 16.6, 27.6, 9.1, 126.4, 109.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 83850144), '2025-26', 38, 31.1, 14.3, 2.3, 3.9, 0.9, 0.4, 0.9, 18.9, 6.8, 75, 0.84, 202, 0.5, 260, 0.358, 0.521, 0.549, 18.2, 16.6, 20.5, 6.5, 113.7, 110.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 603522436), '2025-26', 30, 26.1, 14.3, 5.2, 4.0, 1.8, 0.6, 2.6, 24.2, 18.7, 79, 0.861, 162, 0.586, 176, 0.324, 0.534, 0.575, 18.3, 19.5, 23.5, 10.2, 111.1, 105.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 741572820), '2025-26', 36, 30.9, 14.2, 1.9, 7.1, 1.1, 1.4, 2.1, 21.2, 14.8, 116, 0.664, 293, 0.519, 143, 0.301, 0.497, 0.524, 21.3, 16.0, 23.2, 7.5, 100.4, 108.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 390881139), '2025-26', 49, 24.5, 14.2, 2.4, 2.4, 0.6, 0.1, 1.1, 23.6, 9.0, 72, 0.889, 239, 0.502, 329, 0.395, 0.555, 0.579, 16.6, 16.5, 18.9, 7.1, 119.4, 113.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 871435757), '2025-26', 42, 22.3, 14.2, 3.7, 1.9, 0.9, 0.2, 2.1, 25.6, 17.7, 154, 0.877, 269, 0.539, 145, 0.393, 0.557, 0.619, 16.1, 17.9, 19.8, 8.3, 119.5, 111.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 150749187), '2025-26', 43, 26.2, 14.1, 3.7, 3.5, 1.4, 0.3, 1.6, 22.3, 13.0, 131, 0.87, 319, 0.545, 137, 0.35, 0.539, 0.59, 17.6, 17.7, 21.2, 8.7, 117.7, 103.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 684221022), '2025-26', 43, 26.2, 14.0, 2.1, 4.2, 0.7, 0.2, 1.7, 22.6, 12.8, 137, 0.869, 245, 0.535, 237, 0.308, 0.499, 0.553, 18.2, 16.0, 20.3, 7.6, 109.0, 108.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 472227284), '2025-26', 3, 27.4, 14.0, 1.7, 6.7, 1.0, 0.0, 2.0, 23.7, 14.1, 9, 1.0, 19, 0.632, 17, 0.176, 0.458, 0.526, 20.7, 15.7, 22.3, 7.9, 100.2, 109.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 571885519), '2025-26', 43, 27.9, 14.0, 2.9, 6.7, 0.9, 0.7, 1.3, 20.0, 10.4, 114, 0.667, 276, 0.572, 200, 0.35, 0.553, 0.572, 20.7, 16.9, 23.6, 9.3, 117.4, 111.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 590268833), '2025-26', 29, 32.4, 14.0, 1.5, 4.6, 1.2, 0.6, 1.2, 17.0, 10.5, 78, 0.744, 167, 0.575, 141, 0.369, 0.565, 0.593, 18.6, 15.5, 20.1, 5.7, 116.5, 111.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 374418465), '2025-26', 47, 27.9, 14.0, 2.4, 5.4, 0.9, 0.4, 1.6, 18.7, 13.1, 76, 0.737, 277, 0.549, 208, 0.481, 0.623, 0.637, 19.5, 16.4, 21.9, 8.1, 123.8, 109.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 997520717), '2025-26', 51, 27.5, 13.9, 1.4, 2.6, 0.5, 0.2, 0.5, 18.4, 4.5, 117, 0.889, 157, 0.535, 356, 0.407, 0.588, 0.626, 16.5, 15.2, 17.9, 5.4, 125.6, 118.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 292421219), '2025-26', 30, 30.6, 13.9, 2.2, 4.8, 0.7, 0.5, 1.5, 20.1, 11.0, 81, 0.815, 156, 0.41, 200, 0.37, 0.492, 0.531, 18.6, 16.1, 20.9, 6.9, 106.9, 113.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 306343409), '2025-26', 40, 27.0, 13.9, 2.1, 8.1, 1.1, 0.9, 1.4, 18.7, 13.4, 157, 0.745, 353, 0.618, 9, 0.111, 0.606, 0.645, 22.0, 16.0, 24.1, 9.2, 128.9, 108.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 226265324), '2025-26', 48, 27.7, 13.8, 0.9, 5.0, 0.8, 0.8, 1.3, 18.8, 12.2, 104, 0.788, 296, 0.635, 158, 0.43, 0.639, 0.662, 18.8, 14.7, 19.8, 5.7, 124.2, 110.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 613317351), '2025-26', 51, 28.4, 13.7, 4.7, 4.1, 1.4, 0.2, 1.6, 19.4, 13.2, 65, 0.846, 185, 0.465, 366, 0.432, 0.586, 0.605, 17.8, 18.5, 22.5, 9.0, 124.5, 112.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 88352337), '2025-26', 11, 25.8, 13.6, 1.1, 11.1, 0.6, 1.9, 2.4, 20.1, 20.9, 32, 0.781, 93, 0.656, 5, 0.2, 0.638, 0.669, 24.7, 14.7, 25.8, 8.5, 120.3, 101.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 710808056), '2025-26', 51, 24.0, 13.6, 1.5, 6.0, 0.7, 0.2, 0.9, 20.1, 9.0, 134, 0.784, 317, 0.631, 160, 0.394, 0.617, 0.647, 19.6, 15.1, 21.0, 8.3, 130.7, 105.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 593553586), '2025-26', 47, 26.6, 13.6, 2.9, 6.3, 0.6, 0.4, 1.8, 20.9, 14.5, 121, 0.843, 288, 0.559, 208, 0.341, 0.539, 0.58, 19.9, 16.5, 22.8, 9.5, 114.0, 110.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 913646504), '2025-26', 35, 27.6, 13.5, 2.4, 4.7, 0.9, 0.2, 1.1, 19.3, 9.5, 93, 0.882, 234, 0.517, 139, 0.36, 0.525, 0.573, 18.2, 16.0, 20.7, 7.7, 120.1, 108.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 565628164), '2025-26', 28, 25.4, 13.5, 2.4, 2.3, 0.6, 0.1, 0.9, 17.7, 9.0, 38, 0.868, 51, 0.529, 210, 0.462, 0.661, 0.681, 15.8, 15.9, 18.1, 6.6, 132.7, 110.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 410612251), '2025-26', 48, 24.5, 13.4, 1.7, 6.7, 0.5, 0.2, 1.0, 22.8, 8.5, 45, 0.711, 333, 0.502, 204, 0.451, 0.568, 0.577, 20.1, 15.0, 21.7, 8.7, 113.8, 112.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 836024048), '2025-26', 45, 28.2, 13.4, 0.9, 8.4, 0.6, 1.0, 1.4, 17.2, 13.2, 79, 0.671, 407, 0.676, 0, 0.0, 0.676, 0.682, 21.8, 14.3, 22.7, 6.6, 129.9, 110.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 387748993), '2025-26', 53, 31.4, 13.2, 4.2, 4.5, 1.4, 0.5, 1.5, 17.3, 12.2, 79, 0.759, 139, 0.496, 431, 0.39, 0.563, 0.58, 17.8, 17.4, 21.9, 8.0, 120.1, 109.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 137021758), '2025-26', 47, 29.7, 13.2, 2.2, 3.4, 0.5, 0.3, 1.1, 16.5, 10.4, 92, 0.87, 180, 0.522, 275, 0.429, 0.596, 0.628, 16.6, 15.4, 18.9, 6.2, 119.6, 114.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 76223014), '2025-26', 54, 25.4, 13.1, 3.0, 3.6, 1.2, 0.3, 2.2, 24.6, 16.0, 143, 0.811, 453, 0.468, 173, 0.324, 0.473, 0.514, 16.7, 16.1, 19.6, 8.2, 100.4, 116.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 272760984), '2025-26', 1, 22.0, 13.0, 6.0, 3.0, 1.0, 0.0, 2.0, 22.1, 19.2, 4, 1.0, 6, 0.5, 2, 0.5, 0.563, 0.666, 16.0, 19.0, 22.0, 11.2, 133.4, 100.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 935028280), '2025-26', 1, 33.2, 13.0, 6.0, 4.0, 3.0, 0.0, 2.0, 17.8, 14.3, 0, 0.0, 7, 0.286, 5, 0.6, 0.542, 0.542, 17.0, 19.0, 23.0, 8.2, 115.5, 110.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 302893023), '2025-26', 47, 26.9, 13.0, 2.6, 5.0, 0.6, 0.4, 1.6, 21.2, 13.4, 142, 0.725, 333, 0.559, 139, 0.331, 0.54, 0.573, 18.0, 15.7, 20.6, 8.2, 112.2, 113.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 167348188), '2025-26', 39, 25.1, 13.0, 2.2, 2.7, 0.6, 0.3, 1.4, 21.1, 12.0, 66, 0.894, 196, 0.5, 214, 0.393, 0.546, 0.577, 15.7, 15.2, 17.9, 6.8, 111.6, 120.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 312643840), '2025-26', 52, 33.7, 12.9, 2.6, 5.3, 1.0, 0.4, 2.0, 16.1, 15.5, 88, 0.705, 186, 0.586, 370, 0.354, 0.549, 0.566, 18.2, 15.6, 20.8, 6.7, 112.4, 111.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 451162477), '2025-26', 48, 28.5, 12.9, 1.6, 5.6, 0.7, 1.6, 1.2, 18.8, 10.6, 130, 0.777, 199, 0.508, 271, 0.387, 0.55, 0.586, 18.5, 14.5, 20.1, 6.8, 115.8, 111.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 350969535), '2025-26', 35, 28.0, 12.9, 2.8, 2.6, 0.9, 0.2, 0.8, 17.6, 7.2, 43, 0.814, 119, 0.462, 243, 0.42, 0.575, 0.592, 15.5, 15.7, 18.2, 6.5, 125.7, 113.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 97651019), '2025-26', 40, 26.4, 12.8, 5.3, 3.1, 0.8, 0.2, 2.0, 22.6, 15.8, 133, 0.82, 256, 0.449, 166, 0.343, 0.475, 0.531, 15.8, 18.0, 21.1, 9.0, 109.7, 119.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 450556794), '2025-26', 47, 29.9, 12.8, 3.6, 3.7, 1.0, 0.4, 1.9, 18.0, 16.5, 146, 0.863, 191, 0.565, 254, 0.343, 0.536, 0.592, 16.6, 16.5, 20.2, 7.4, 116.4, 112.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 683179947), '2025-26', 45, 28.4, 12.7, 1.8, 4.2, 0.8, 0.8, 1.8, 20.7, 14.9, 162, 0.802, 166, 0.512, 290, 0.31, 0.482, 0.541, 16.9, 14.5, 18.7, 6.4, 105.3, 112.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 993536379), '2025-26', 43, 21.9, 12.6, 3.6, 2.9, 1.0, 0.2, 1.9, 25.6, 16.7, 176, 0.784, 308, 0.549, 105, 0.21, 0.489, 0.553, 15.5, 16.2, 19.1, 9.3, 108.4, 109.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 707700501), '2025-26', 43, 22.2, 12.4, 2.6, 2.0, 0.7, 0.4, 1.4, 23.8, 12.4, 73, 0.877, 227, 0.445, 209, 0.426, 0.538, 0.569, 14.4, 15.0, 17.0, 7.2, 109.5, 118.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 678129899), '2025-26', 38, 26.9, 12.4, 5.8, 3.0, 1.3, 0.2, 1.4, 17.1, 14.7, 138, 0.848, 238, 0.609, 64, 0.328, 0.584, 0.648, 15.3, 18.2, 21.2, 8.9, 134.4, 116.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 494930235), '2025-26', 50, 24.5, 12.4, 2.9, 2.5, 1.4, 0.6, 1.2, 21.6, 9.8, 56, 0.786, 239, 0.469, 311, 0.379, 0.525, 0.541, 15.0, 15.3, 17.9, 7.3, 116.7, 108.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 822101795), '2025-26', 47, 24.0, 12.3, 1.1, 8.1, 1.0, 1.0, 1.1, 17.4, 13.0, 145, 0.779, 348, 0.661, 1, 1.0, 0.663, 0.698, 20.4, 13.3, 21.5, 8.0, 139.8, 104.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 171548747), '2025-26', 53, 26.0, 12.3, 4.3, 7.3, 1.0, 0.9, 2.4, 21.8, 20.1, 175, 0.777, 461, 0.514, 51, 0.275, 0.504, 0.553, 19.6, 16.6, 23.9, 11.2, 110.0, 108.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 785925807), '2025-26', 49, 21.6, 12.2, 1.6, 2.9, 0.7, 0.1, 1.2, 22.3, 11.3, 111, 0.847, 211, 0.588, 250, 0.344, 0.549, 0.588, 15.2, 13.8, 16.7, 7.1, 113.3, 118.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 918466610), '2025-26', 48, 29.3, 12.2, 4.0, 7.3, 0.7, 1.3, 1.4, 17.3, 14.1, 171, 0.614, 400, 0.595, 13, 0.154, 0.584, 0.601, 19.5, 16.2, 23.5, 9.7, 127.1, 113.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 453743558), '2025-26', 40, 30.4, 12.1, 5.1, 7.6, 1.2, 0.3, 2.0, 16.5, 18.2, 76, 0.737, 208, 0.572, 155, 0.406, 0.588, 0.609, 19.7, 17.1, 24.7, 10.2, 123.1, 106.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 99523722), '2025-26', 49, 28.3, 12.1, 1.8, 2.7, 0.7, 0.3, 0.7, 15.6, 6.9, 67, 0.746, 96, 0.552, 364, 0.401, 0.591, 0.607, 14.8, 14.0, 16.6, 5.5, 124.7, 109.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 502112432), '2025-26', 20, 23.8, 12.1, 2.5, 5.9, 0.4, 0.3, 2.3, 23.9, 19.1, 66, 0.742, 141, 0.504, 53, 0.321, 0.497, 0.543, 18.0, 14.6, 20.5, 9.5, 103.6, 109.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 898537815), '2025-26', 49, 24.2, 12.0, 5.6, 2.7, 0.7, 0.1, 1.5, 17.8, 15.8, 101, 0.931, 154, 0.532, 239, 0.46, 0.628, 0.672, 14.7, 17.6, 20.2, 9.4, 133.2, 114.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 664865963), '2025-26', 50, 26.9, 12.0, 1.7, 3.5, 0.8, 0.1, 1.2, 19.1, 10.3, 131, 0.756, 242, 0.488, 264, 0.337, 0.497, 0.534, 15.5, 13.8, 17.2, 6.2, 108.4, 112.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 655552281), '2025-26', 48, 29.6, 12.0, 2.1, 7.3, 0.8, 0.7, 1.2, 15.6, 12.4, 137, 0.781, 245, 0.604, 164, 0.348, 0.571, 0.612, 19.3, 14.0, 21.3, 7.7, 125.4, 105.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 902403182), '2025-26', 40, 29.8, 11.9, 0.9, 3.6, 0.5, 0.3, 0.8, 15.2, 7.6, 49, 0.735, 204, 0.559, 162, 0.438, 0.602, 0.615, 15.5, 12.8, 16.3, 4.5, 120.0, 116.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 957435820), '2025-26', 28, 24.6, 11.9, 1.4, 6.2, 1.3, 0.6, 1.5, 19.8, 13.4, 30, 0.633, 149, 0.45, 123, 0.488, 0.577, 0.584, 18.1, 13.3, 19.5, 7.6, 117.3, 105.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 793155956), '2025-26', 25, 21.4, 11.8, 2.2, 2.9, 1.5, 0.4, 1.6, 25.0, 14.2, 62, 0.806, 131, 0.557, 117, 0.282, 0.494, 0.536, 14.7, 14.0, 16.9, 7.9, 104.1, 105.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 461186105), '2025-26', 52, 26.5, 11.8, 3.5, 4.6, 1.1, 0.2, 1.5, 18.9, 14.1, 126, 0.762, 251, 0.514, 229, 0.38, 0.541, 0.574, 16.4, 15.3, 19.9, 8.7, 115.3, 109.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 5493128), '2025-26', 28, 30.6, 11.7, 2.4, 3.6, 0.6, 0.3, 1.0, 15.2, 9.9, 58, 0.81, 119, 0.496, 126, 0.429, 0.571, 0.604, 15.3, 14.0, 17.6, 6.1, 121.6, 115.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 810519954), '2025-26', 5, 13.9, 11.6, 1.8, 2.2, 0.6, 0.0, 1.4, 34.6, 13.1, 9, 0.778, 20, 0.45, 26, 0.423, 0.554, 0.58, 13.8, 13.4, 15.6, 10.3, 111.5, 112.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 552929659), '2025-26', 47, 22.1, 11.5, 1.4, 2.4, 0.5, 0.3, 0.9, 22.2, 7.8, 34, 0.706, 134, 0.41, 360, 0.375, 0.521, 0.53, 13.9, 12.9, 15.3, 6.1, 103.3, 114.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 437551458), '2025-26', 51, 28.5, 11.5, 1.5, 6.1, 0.8, 0.4, 1.0, 15.6, 10.3, 100, 0.85, 102, 0.598, 341, 0.372, 0.568, 0.604, 17.7, 13.0, 19.1, 6.6, 119.8, 108.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 384320093), '2025-26', 45, 25.7, 11.5, 1.6, 3.7, 0.8, 0.5, 1.2, 19.4, 10.3, 44, 0.705, 272, 0.522, 197, 0.345, 0.52, 0.531, 15.2, 13.1, 16.8, 6.4, 106.7, 117.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 503783581), '2025-26', 51, 33.8, 11.4, 6.3, 6.5, 1.9, 0.4, 2.0, 16.1, 16.1, 86, 0.605, 452, 0.553, 73, 0.137, 0.505, 0.517, 17.9, 17.7, 24.2, 9.2, 114.6, 112.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 597064963), '2025-26', 51, 22.7, 11.4, 2.0, 5.1, 0.8, 0.6, 0.9, 18.4, 10.1, 102, 0.755, 225, 0.644, 185, 0.384, 0.613, 0.638, 16.4, 13.4, 18.4, 8.6, 127.9, 107.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 768328999), '2025-26', 45, 23.6, 11.3, 1.7, 6.5, 0.6, 0.5, 1.0, 18.5, 10.6, 89, 0.674, 260, 0.581, 129, 0.38, 0.577, 0.594, 17.8, 13.0, 19.5, 8.5, 125.4, 109.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 244346261), '2025-26', 48, 27.3, 11.2, 1.9, 11.3, 0.5, 1.3, 1.1, 15.5, 11.3, 116, 0.672, 255, 0.643, 144, 0.306, 0.576, 0.598, 22.5, 13.1, 24.5, 9.1, 133.2, 108.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 42295351), '2025-26', 38, 26.5, 11.2, 4.9, 10.2, 1.3, 0.5, 2.5, 19.8, 21.8, 107, 0.561, 274, 0.536, 67, 0.358, 0.537, 0.549, 21.4, 16.1, 26.2, 12.4, 111.3, 108.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 157857053), '2025-26', 43, 22.3, 11.1, 2.6, 2.7, 0.6, 0.1, 1.3, 22.6, 11.3, 49, 0.735, 184, 0.495, 271, 0.321, 0.487, 0.503, 13.8, 13.7, 16.4, 7.7, 106.1, 116.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 747715910), '2025-26', 50, 24.6, 11.1, 1.4, 3.3, 0.9, 0.6, 0.9, 17.7, 9.2, 79, 0.759, 143, 0.49, 292, 0.404, 0.568, 0.59, 14.4, 12.5, 15.8, 6.0, 116.3, 110.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 479729512), '2025-26', 49, 22.3, 11.1, 0.6, 9.1, 0.8, 1.0, 0.9, 18.0, 9.7, 68, 0.794, 271, 0.598, 139, 0.403, 0.6, 0.621, 20.3, 11.7, 20.9, 7.0, 126.8, 105.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 46382491), '2025-26', 1, 21.3, 11.0, 9.0, 5.0, 1.0, 0.0, 5.0, 30.2, 32.9, 2, 0.5, 3, 0.667, 7, 0.286, 0.5, 0.506, 16.0, 20.0, 25.0, 14.9, 96.6, 96.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 887496753), '2025-26', 1, 22.0, 11.0, 4.0, 3.0, 1.0, 0.0, 3.0, 26.3, 21.4, 0, 0.0, 8, 0.5, 3, 0.333, 0.5, 0.5, 14.0, 15.0, 18.0, 9.3, 89.1, 108.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 490894689), '2025-26', 1, 27.9, 11.0, 4.0, 12.0, 2.0, 0.0, 2.0, 18.2, 19.4, 4, 0.75, 7, 0.571, 1, 0.0, 0.5, 0.564, 23.0, 15.0, 27.0, 11.6, 131.1, 109.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 97651019), '2025-26', 1, 19.2, 11.0, 6.0, 2.0, 3.0, 0.0, 3.0, 36.7, 17.6, 0, 0.0, 9, 0.444, 5, 0.2, 0.393, 0.393, 13.0, 17.0, 19.0, 10.6, 85.0, 113.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 504501345), '2025-26', 27, 26.2, 11.0, 3.1, 10.0, 1.0, 0.7, 2.1, 17.3, 22.5, 68, 0.676, 191, 0.654, 5, 0.0, 0.638, 0.655, 20.9, 14.1, 24.0, 10.7, 128.1, 95.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 24503326), '2025-26', 44, 23.6, 10.9, 2.6, 3.8, 0.8, 0.6, 1.1, 19.4, 10.8, 56, 0.732, 181, 0.63, 223, 0.314, 0.542, 0.559, 14.7, 13.5, 17.4, 8.1, 111.0, 112.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 986683772), '2025-26', 44, 24.8, 10.9, 3.3, 3.1, 0.8, 0.3, 1.8, 19.7, 17.0, 54, 0.852, 109, 0.431, 281, 0.402, 0.555, 0.579, 14.0, 14.2, 17.3, 7.8, 109.5, 115.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 464207267), '2025-26', 37, 24.0, 10.8, 1.9, 3.5, 1.0, 0.6, 1.3, 19.2, 13.1, 45, 0.756, 145, 0.524, 180, 0.394, 0.562, 0.579, 14.3, 12.6, 16.1, 6.9, 109.4, 105.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 758682521), '2025-26', 13, 20.5, 10.7, 1.5, 2.2, 0.5, 0.1, 0.8, 19.8, 8.6, 23, 0.87, 47, 0.596, 59, 0.356, 0.561, 0.599, 12.8, 12.2, 14.4, 6.4, 116.2, 118.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 645351420), '2025-26', 51, 31.4, 10.7, 1.7, 11.4, 0.8, 1.7, 1.2, 12.4, 16.4, 201, 0.498, 320, 0.7, 2, 0.0, 0.696, 0.668, 22.1, 12.4, 23.8, 7.5, 136.9, 105.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 515584179), '2025-26', 40, 21.4, 10.7, 3.5, 3.3, 0.9, 0.4, 1.4, 23.2, 12.9, 80, 0.738, 277, 0.531, 102, 0.245, 0.487, 0.517, 14.0, 14.2, 17.5, 9.3, 108.3, 106.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 333024667), '2025-26', 39, 24.4, 10.7, 1.4, 3.5, 0.9, 0.5, 1.0, 18.5, 9.6, 55, 0.618, 189, 0.545, 169, 0.349, 0.535, 0.546, 14.2, 12.1, 15.5, 6.1, 106.3, 111.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 28709855), '2025-26', 51, 28.2, 10.6, 2.1, 3.0, 0.6, 0.2, 1.0, 15.0, 10.7, 91, 0.857, 161, 0.547, 258, 0.372, 0.554, 0.59, 13.6, 12.7, 15.7, 5.8, 119.6, 112.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 529323024), '2025-26', 46, 30.0, 10.5, 2.0, 2.6, 0.5, 0.1, 0.9, 13.4, 9.9, 31, 0.774, 38, 0.526, 325, 0.431, 0.634, 0.643, 13.1, 12.5, 15.1, 5.1, 120.5, 115.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 593067285), '2025-26', 47, 25.8, 10.4, 2.7, 6.0, 1.9, 0.9, 1.4, 17.8, 14.8, 143, 0.58, 372, 0.524, 20, 0.3, 0.52, 0.54, 16.4, 13.1, 19.1, 8.6, 114.3, 100.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 432166947), '2025-26', 19, 24.2, 10.3, 1.1, 2.6, 0.8, 1.0, 0.8, 15.6, 10.3, 38, 0.763, 71, 0.69, 59, 0.39, 0.642, 0.668, 12.9, 11.4, 14.0, 5.1, 129.1, 113.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 369588355), '2025-26', 34, 24.3, 10.3, 3.3, 3.9, 0.8, 0.3, 1.7, 19.5, 15.9, 69, 0.841, 201, 0.483, 99, 0.333, 0.488, 0.531, 14.3, 13.6, 17.5, 8.4, 107.8, 114.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 227747867), '2025-26', 52, 23.8, 10.2, 2.0, 4.4, 0.8, 0.3, 1.6, 19.9, 15.5, 110, 0.782, 226, 0.442, 225, 0.364, 0.494, 0.533, 14.7, 12.2, 16.6, 7.5, 100.2, 113.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 723563633), '2025-26', 52, 29.5, 10.2, 2.9, 4.8, 1.2, 0.3, 1.5, 14.5, 15.3, 28, 0.679, 85, 0.506, 352, 0.403, 0.586, 0.591, 15.0, 13.2, 17.9, 7.1, 115.1, 109.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 590205036), '2025-26', 26, 19.0, 10.2, 4.0, 2.3, 0.5, 0.1, 1.9, 26.1, 17.4, 60, 0.717, 120, 0.508, 112, 0.295, 0.476, 0.511, 12.5, 14.2, 16.5, 9.6, 101.8, 112.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 198749421), '2025-26', 43, 20.2, 10.2, 1.3, 6.9, 0.4, 0.8, 0.9, 19.4, 10.9, 71, 0.718, 154, 0.61, 174, 0.379, 0.588, 0.608, 17.1, 11.4, 18.3, 8.9, 121.9, 108.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 266701669), '2025-26', 45, 23.9, 10.2, 3.3, 3.3, 0.6, 0.2, 1.1, 16.3, 13.0, 116, 0.767, 207, 0.594, 126, 0.333, 0.559, 0.6, 13.6, 13.5, 16.9, 8.0, 122.5, 110.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 449078044), '2025-26', 38, 19.2, 10.1, 1.5, 5.7, 0.5, 0.7, 1.2, 19.0, 15.2, 97, 0.711, 227, 0.643, 19, 0.421, 0.642, 0.667, 15.8, 11.6, 17.3, 9.2, 131.5, 113.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 138190608), '2025-26', 50, 28.2, 10.1, 4.6, 3.6, 0.6, 0.2, 2.4, 17.2, 21.4, 70, 0.757, 167, 0.395, 266, 0.402, 0.523, 0.545, 13.7, 14.7, 18.3, 7.8, 104.2, 118.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 787675387), '2025-26', 47, 23.5, 10.1, 1.2, 5.3, 0.3, 1.7, 1.2, 16.4, 14.0, 104, 0.76, 232, 0.638, 105, 0.324, 0.591, 0.623, 15.4, 11.3, 16.6, 6.8, 122.3, 101.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 671218450), '2025-26', 44, 24.9, 10.0, 7.1, 2.7, 0.9, 0.3, 2.3, 18.4, 24.0, 135, 0.681, 259, 0.56, 67, 0.284, 0.532, 0.57, 12.6, 17.1, 19.8, 9.3, 115.0, 118.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 229808024), '2025-26', 49, 25.3, 9.9, 1.5, 8.4, 0.9, 1.3, 1.1, 14.7, 13.9, 112, 0.67, 317, 0.647, 5, 0.0, 0.637, 0.653, 18.3, 11.4, 19.8, 7.9, 135.9, 101.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 417400512), '2025-26', 10, 18.4, 9.7, 1.5, 5.6, 0.2, 0.4, 1.0, 19.0, 13.5, 20, 0.7, 43, 0.651, 21, 0.429, 0.648, 0.666, 15.3, 11.2, 16.8, 9.4, 128.4, 110.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 660355893), '2025-26', 43, 20.7, 9.7, 1.4, 2.5, 0.6, 0.2, 0.6, 17.4, 8.2, 67, 0.866, 58, 0.586, 244, 0.398, 0.594, 0.629, 12.2, 11.1, 13.6, 6.3, 124.2, 105.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 469671667), '2025-26', 31, 26.6, 9.7, 2.6, 4.6, 1.4, 0.9, 1.5, 17.3, 15.4, 101, 0.762, 150, 0.48, 103, 0.262, 0.445, 0.508, 14.3, 12.3, 16.9, 7.3, 105.3, 113.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 537960914), '2025-26', 21, 25.3, 9.7, 2.1, 7.7, 0.8, 0.5, 1.6, 14.5, 20.6, 47, 0.596, 127, 0.693, 0, 0.0, 0.693, 0.691, 17.4, 11.9, 19.6, 8.5, 128.6, 102.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 74553292), '2025-26', 45, 23.1, 9.6, 1.0, 6.4, 0.4, 0.5, 1.0, 16.8, 11.7, 70, 0.729, 294, 0.588, 39, 0.282, 0.569, 0.591, 16.0, 10.6, 17.0, 6.8, 117.6, 111.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 730379820), '2025-26', 51, 22.4, 9.6, 2.1, 6.6, 0.7, 0.4, 1.4, 18.1, 15.5, 113, 0.69, 251, 0.558, 129, 0.341, 0.542, 0.57, 16.3, 11.7, 18.3, 9.1, 114.2, 110.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 630553504), '2025-26', 27, 21.1, 9.6, 1.4, 1.9, 0.5, 0.2, 0.4, 16.1, 6.1, 44, 0.75, 50, 0.48, 136, 0.434, 0.605, 0.628, 11.4, 10.9, 12.8, 5.6, 131.7, 114.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 390372258), '2025-26', 38, 17.1, 9.5, 4.8, 2.2, 1.2, 0.2, 1.2, 23.9, 12.2, 15, 0.933, 278, 0.558, 38, 0.316, 0.547, 0.558, 11.7, 14.3, 16.5, 10.9, 117.7, 112.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 379836972), '2025-26', 50, 27.1, 9.5, 2.0, 4.1, 1.4, 0.5, 1.1, 14.9, 13.3, 104, 0.74, 189, 0.598, 175, 0.326, 0.545, 0.578, 13.6, 11.5, 15.6, 6.3, 119.2, 111.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 247497086), '2025-26', 41, 28.3, 9.5, 2.8, 3.0, 1.2, 0.3, 1.7, 15.8, 18.2, 88, 0.83, 122, 0.525, 192, 0.328, 0.505, 0.553, 12.5, 12.3, 15.3, 6.1, 108.7, 111.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 644554112), '2025-26', 36, 22.8, 9.4, 0.8, 2.5, 1.1, 0.5, 1.0, 17.9, 12.3, 78, 0.859, 80, 0.638, 184, 0.31, 0.517, 0.57, 11.9, 10.2, 12.7, 4.7, 109.1, 112.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 114641708), '2025-26', 48, 19.4, 9.4, 1.4, 1.8, 0.4, 0.1, 1.1, 21.4, 11.5, 68, 0.794, 209, 0.517, 182, 0.335, 0.51, 0.538, 11.3, 10.8, 12.6, 5.9, 109.5, 110.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 969593520), '2025-26', 30, 19.8, 9.3, 1.6, 3.3, 0.8, 0.2, 1.1, 18.9, 15.5, 77, 0.792, 122, 0.615, 63, 0.365, 0.592, 0.64, 12.6, 10.9, 14.2, 7.4, 123.2, 115.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 758682521), '2025-26', 19, 19.5, 9.2, 1.7, 2.3, 0.4, 0.2, 0.7, 16.7, 10.5, 34, 0.765, 43, 0.674, 76, 0.395, 0.622, 0.649, 11.5, 10.8, 13.2, 6.8, 126.9, 121.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 400361280), '2025-26', 21, 16.9, 9.2, 0.7, 2.8, 0.7, 0.4, 0.9, 23.7, 9.6, 31, 0.742, 113, 0.54, 56, 0.286, 0.503, 0.528, 12.0, 9.9, 12.7, 6.2, 105.1, 118.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 457499680), '2025-26', 16, 29.6, 9.1, 2.7, 4.1, 0.6, 0.4, 1.1, 14.6, 12.7, 36, 0.778, 87, 0.552, 36, 0.194, 0.476, 0.522, 13.2, 11.8, 15.9, 6.3, 114.4, 115.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 694769920), '2025-26', 43, 29.0, 9.1, 7.2, 2.5, 1.2, 0.1, 1.7, 13.7, 17.7, 46, 0.63, 202, 0.515, 127, 0.402, 0.549, 0.558, 11.6, 16.3, 18.8, 7.5, 119.4, 108.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 265754448), '2025-26', 46, 22.3, 9.0, 1.5, 2.1, 0.8, 0.3, 0.7, 14.4, 8.8, 36, 0.75, 70, 0.6, 239, 0.423, 0.626, 0.637, 11.1, 10.5, 12.6, 5.5, 120.7, 111.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 923787586), '2025-26', 40, 14.6, 9.0, 1.4, 5.3, 0.2, 0.7, 1.2, 25.4, 15.8, 79, 0.785, 238, 0.597, 17, 0.294, 0.586, 0.623, 14.3, 10.4, 15.7, 11.1, 121.2, 101.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 334057834), '2025-26', 31, 28.6, 9.0, 2.5, 3.5, 1.6, 0.5, 1.3, 14.9, 13.0, 38, 0.816, 129, 0.481, 132, 0.311, 0.473, 0.501, 12.5, 11.5, 15.1, 6.0, 104.9, 111.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 236051624), '2025-26', 50, 24.1, 9.0, 1.4, 3.8, 0.6, 0.3, 0.5, 14.8, 6.6, 12, 0.917, 52, 0.538, 330, 0.388, 0.576, 0.582, 12.8, 10.4, 14.2, 6.0, 123.9, 112.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 830227453), '2025-26', 44, 23.9, 8.9, 1.9, 2.6, 0.5, 0.1, 0.8, 13.9, 10.5, 25, 0.92, 109, 0.633, 199, 0.387, 0.599, 0.614, 11.5, 10.8, 13.3, 5.9, 120.0, 123.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 854478662), '2025-26', 41, 27.8, 8.9, 1.2, 4.0, 0.9, 0.5, 0.7, 13.7, 8.3, 32, 0.844, 90, 0.5, 228, 0.36, 0.528, 0.547, 12.8, 10.0, 14.0, 5.0, 111.6, 101.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 241686525), '2025-26', 44, 25.8, 8.8, 1.5, 2.6, 0.6, 0.5, 0.6, 13.5, 8.5, 71, 0.775, 164, 0.585, 139, 0.331, 0.545, 0.576, 11.4, 10.2, 12.8, 5.0, 119.7, 114.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 123042215), '2025-26', 45, 22.6, 8.8, 1.2, 3.3, 0.9, 0.3, 0.9, 16.7, 10.1, 38, 0.842, 171, 0.491, 176, 0.369, 0.523, 0.543, 12.1, 10.0, 13.3, 5.8, 108.0, 113.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 293909180), '2025-26', 49, 21.9, 8.7, 2.2, 4.8, 1.5, 0.2, 1.0, 18.4, 11.3, 38, 0.711, 189, 0.466, 211, 0.355, 0.501, 0.514, 13.6, 11.0, 15.8, 8.2, 114.2, 107.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 10876407), '2025-26', 30, 17.8, 8.6, 1.1, 3.4, 0.7, 0.6, 1.0, 19.5, 12.9, 47, 0.745, 112, 0.634, 90, 0.3, 0.552, 0.579, 12.0, 9.7, 13.1, 7.1, 109.3, 108.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 210371208), '2025-26', 52, 19.5, 8.5, 1.3, 3.8, 0.5, 2.0, 0.8, 17.2, 10.8, 53, 0.83, 123, 0.732, 224, 0.321, 0.571, 0.594, 12.3, 9.7, 13.5, 7.1, 116.1, 108.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 943392560), '2025-26', 46, 24.0, 8.5, 1.5, 1.1, 0.6, 0.1, 0.6, 15.5, 7.0, 41, 0.78, 91, 0.451, 252, 0.365, 0.522, 0.54, 9.6, 10.0, 11.1, 4.0, 108.3, 119.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 311158508), '2025-26', 41, 24.0, 8.5, 1.2, 5.0, 1.0, 0.6, 0.8, 13.4, 11.4, 73, 0.781, 189, 0.635, 59, 0.288, 0.587, 0.621, 13.5, 9.7, 14.8, 6.2, 131.6, 110.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 349881689), '2025-26', 50, 17.3, 8.5, 1.5, 3.2, 0.5, 0.2, 0.8, 19.7, 10.0, 73, 0.808, 105, 0.476, 245, 0.363, 0.524, 0.557, 11.8, 10.0, 13.3, 8.0, 113.5, 108.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 385786914), '2025-26', 40, 23.2, 8.4, 0.7, 6.1, 0.6, 1.6, 1.0, 11.8, 18.0, 78, 0.679, 184, 0.772, 2, 0.0, 0.763, 0.765, 14.5, 9.1, 15.2, 5.7, 140.6, 110.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 489359108), '2025-26', 35, 21.4, 8.3, 0.9, 6.7, 0.8, 1.3, 1.3, 14.5, 20.0, 90, 0.756, 176, 0.631, 0, 0.0, 0.631, 0.673, 14.9, 9.2, 15.9, 6.9, 127.4, 102.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 409094610), '2025-26', 48, 21.0, 8.3, 2.8, 2.4, 0.8, 0.2, 1.2, 17.4, 14.4, 71, 0.915, 174, 0.506, 164, 0.317, 0.491, 0.538, 10.7, 11.1, 13.5, 7.3, 109.7, 114.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 956681675), '2025-26', 48, 25.1, 8.3, 1.6, 8.5, 0.7, 1.0, 0.9, 12.1, 15.3, 133, 0.654, 243, 0.638, 1, 1.0, 0.641, 0.661, 16.9, 9.9, 18.5, 7.7, 141.9, 106.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 954193190), '2025-26', 43, 26.6, 8.3, 5.1, 5.7, 0.8, 0.7, 2.7, 16.7, 27.0, 52, 0.712, 119, 0.563, 194, 0.32, 0.511, 0.531, 14.0, 13.4, 19.1, 9.4, 102.1, 104.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 935028280), '2025-26', 33, 16.8, 8.2, 1.6, 2.2, 0.5, 0.4, 1.1, 20.2, 13.7, 38, 0.789, 107, 0.533, 113, 0.372, 0.545, 0.57, 10.4, 9.8, 11.9, 7.3, 112.3, 108.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 744541634), '2025-26', 42, 16.8, 8.2, 3.3, 1.8, 0.9, 0.2, 1.3, 21.6, 16.2, 70, 0.8, 174, 0.454, 110, 0.391, 0.505, 0.545, 10.0, 11.5, 13.3, 8.7, 113.8, 107.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 204300604), '2025-26', 6, 20.2, 8.2, 1.7, 0.8, 0.5, 0.0, 1.5, 22.3, 15.7, 8, 0.75, 29, 0.379, 19, 0.368, 0.448, 0.476, 9.0, 9.8, 10.7, 4.4, 92.2, 112.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 635161508), '2025-26', 10, 10.5, 8.1, 0.3, 2.7, 0.4, 0.0, 0.8, 29.8, 11.9, 17, 0.882, 35, 0.514, 24, 0.417, 0.559, 0.609, 10.8, 8.4, 11.1, 7.1, 112.1, 99.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 298480551), '2025-26', 49, 20.7, 8.1, 1.4, 4.3, 1.4, 0.4, 1.3, 18.7, 15.8, 99, 0.788, 220, 0.523, 131, 0.229, 0.456, 0.504, 12.5, 9.6, 13.9, 7.1, 102.7, 100.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 114088912), '2025-26', 48, 18.3, 8.1, 2.2, 6.6, 1.1, 0.4, 1.6, 18.7, 23.7, 125, 0.68, 214, 0.664, 31, 0.226, 0.622, 0.65, 14.7, 10.4, 16.9, 10.7, 125.4, 104.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 265754448), '2025-26', 2, 18.4, 8.0, 1.0, 0.0, 1.0, 1.0, 0.0, 15.8, 0.0, 3, 1.0, 3, 0.667, 10, 0.3, 0.5, 0.559, 8.0, 9.0, 9.0, 0.0, 129.4, 117.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 495133740), '2025-26', 34, 21.6, 8.0, 4.4, 4.0, 0.8, 0.4, 1.9, 19.5, 19.2, 46, 0.804, 105, 0.419, 159, 0.308, 0.445, 0.478, 12.0, 12.4, 16.4, 9.6, 103.2, 108.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 836938174), '2025-26', 42, 22.5, 8.0, 2.1, 5.1, 0.9, 0.9, 1.2, 15.0, 16.1, 61, 0.639, 210, 0.595, 46, 0.348, 0.582, 0.596, 13.1, 10.1, 15.2, 7.8, 123.0, 105.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 723198814), '2025-26', 43, 16.9, 8.0, 1.1, 4.3, 0.4, 0.5, 0.6, 16.1, 10.5, 75, 0.787, 143, 0.657, 70, 0.457, 0.667, 0.697, 12.3, 9.0, 13.3, 7.9, 148.8, 102.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 184641973), '2025-26', 41, 18.3, 8.0, 2.4, 3.6, 0.6, 0.4, 1.6, 21.6, 17.9, 95, 0.705, 139, 0.468, 155, 0.277, 0.44, 0.485, 11.5, 10.3, 13.9, 9.0, 96.7, 107.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 750561102), '2025-26', 44, 17.5, 8.0, 1.5, 2.5, 0.8, 0.2, 1.0, 19.7, 12.3, 34, 0.794, 105, 0.6, 195, 0.344, 0.545, 0.562, 10.5, 9.5, 12.0, 7.1, 109.1, 110.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 311385472), '2025-26', 36, 20.0, 7.9, 1.9, 4.5, 0.6, 0.4, 1.1, 19.6, 12.6, 50, 0.78, 138, 0.464, 125, 0.312, 0.466, 0.498, 12.4, 9.8, 14.3, 8.1, 105.0, 110.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 268336630), '2025-26', 41, 21.9, 7.9, 3.1, 2.8, 0.9, 0.1, 1.1, 15.7, 14.4, 24, 0.833, 87, 0.54, 193, 0.363, 0.543, 0.558, 10.7, 11.0, 13.8, 7.5, 112.9, 114.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 174490259), '2025-26', 46, 20.5, 7.9, 2.1, 2.2, 0.7, 0.1, 0.7, 12.7, 11.7, 35, 0.914, 91, 0.604, 149, 0.497, 0.692, 0.713, 10.1, 10.0, 12.2, 6.5, 133.6, 116.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 685576173), '2025-26', 52, 17.6, 7.9, 1.4, 3.9, 0.4, 0.5, 0.8, 18.7, 10.0, 30, 0.833, 123, 0.602, 228, 0.346, 0.548, 0.563, 11.8, 9.3, 13.2, 8.0, 114.0, 105.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 233258906), '2025-26', 49, 26.5, 7.9, 2.1, 3.0, 2.1, 0.2, 0.9, 13.5, 11.3, 38, 0.737, 152, 0.487, 193, 0.363, 0.519, 0.534, 10.9, 10.0, 13.0, 5.6, 110.7, 103.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 24082212), '2025-26', 24, 15.3, 7.8, 1.8, 1.8, 0.7, 0.2, 1.1, 21.1, 16.5, 59, 0.763, 81, 0.531, 50, 0.38, 0.546, 0.599, 9.7, 9.7, 11.5, 7.7, 114.4, 110.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 520734578), '2025-26', 51, 27.3, 7.8, 3.3, 2.9, 1.5, 0.2, 1.4, 13.3, 18.5, 62, 0.79, 168, 0.571, 148, 0.358, 0.555, 0.583, 10.7, 11.1, 14.0, 6.2, 116.1, 112.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 481687027), '2025-26', 34, 19.6, 7.8, 2.9, 1.8, 0.9, 0.6, 1.3, 18.0, 16.5, 54, 0.685, 114, 0.526, 108, 0.333, 0.514, 0.539, 9.6, 10.7, 12.5, 7.0, 109.6, 108.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 861821181), '2025-26', 30, 19.7, 7.7, 1.4, 2.0, 0.6, 0.2, 0.5, 14.5, 8.6, 69, 0.754, 101, 0.505, 58, 0.448, 0.566, 0.613, 9.7, 9.1, 11.1, 5.7, 126.1, 115.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 833965862), '2025-26', 17, 21.9, 7.6, 2.6, 2.8, 0.5, 0.1, 1.3, 18.1, 15.3, 19, 0.842, 47, 0.447, 74, 0.324, 0.471, 0.502, 10.4, 10.2, 13.0, 7.0, 102.4, 110.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 877882736), '2025-26', 43, 25.4, 7.6, 3.4, 3.3, 0.7, 0.2, 1.1, 13.6, 15.6, 62, 0.823, 157, 0.529, 108, 0.343, 0.523, 0.561, 11.0, 11.1, 14.4, 6.9, 120.1, 112.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 684221022), '2025-26', 2, 25.5, 7.5, 0.5, 1.5, 0.0, 0.0, 2.0, 21.5, 17.1, 6, 0.833, 10, 0.2, 9, 0.222, 0.263, 0.347, 9.0, 8.0, 9.5, 2.8, 67.9, 118.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 163085267), '2025-26', 52, 24.7, 7.5, 2.1, 4.1, 1.0, 0.3, 1.1, 14.2, 14.4, 77, 0.779, 246, 0.504, 81, 0.346, 0.508, 0.543, 11.6, 9.7, 13.7, 6.5, 113.6, 110.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 382719953), '2025-26', 41, 23.5, 7.5, 2.0, 6.9, 0.5, 1.2, 0.5, 10.7, 9.1, 82, 0.793, 189, 0.64, 0, 0.0, 0.64, 0.682, 14.4, 9.4, 16.3, 8.0, 156.5, 106.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 895911933), '2025-26', 31, 20.2, 7.5, 2.3, 4.8, 0.8, 1.1, 0.9, 16.0, 12.6, 18, 0.889, 66, 0.545, 134, 0.358, 0.54, 0.558, 12.3, 9.8, 14.6, 8.6, 116.0, 108.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 587768657), '2025-26', 31, 16.3, 7.4, 2.2, 2.4, 0.5, 0.1, 1.4, 24.1, 15.0, 21, 0.857, 113, 0.407, 124, 0.323, 0.447, 0.467, 9.8, 9.6, 12.0, 8.3, 98.7, 108.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 751941624), '2025-26', 45, 20.5, 7.3, 1.2, 5.6, 0.8, 0.5, 0.7, 15.5, 9.9, 72, 0.542, 219, 0.548, 53, 0.302, 0.529, 0.538, 12.8, 8.4, 14.0, 7.1, 116.7, 114.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 533055698), '2025-26', 47, 19.0, 7.3, 1.1, 5.6, 0.8, 0.6, 0.6, 15.1, 9.4, 60, 0.7, 173, 0.601, 97, 0.32, 0.557, 0.579, 12.9, 8.4, 14.0, 7.5, 125.5, 114.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 667341989), '2025-26', 37, 18.8, 7.3, 1.9, 2.9, 0.6, 0.1, 0.9, 18.8, 11.4, 26, 0.731, 103, 0.476, 152, 0.336, 0.492, 0.507, 10.2, 9.2, 12.0, 7.3, 106.2, 118.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 830611725), '2025-26', 44, 14.8, 7.2, 2.6, 1.7, 0.6, 0.2, 0.9, 19.6, 13.3, 45, 0.711, 96, 0.594, 151, 0.377, 0.577, 0.594, 8.9, 9.8, 11.5, 8.6, 121.3, 106.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 339745290), '2025-26', 20, 20.1, 7.1, 3.1, 3.3, 1.2, 0.5, 0.9, 14.7, 13.5, 38, 0.658, 104, 0.519, 5, 0.6, 0.537, 0.565, 10.4, 10.2, 13.5, 8.3, 121.6, 113.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 600294081), '2025-26', 31, 11.4, 7.1, 1.0, 2.4, 0.3, 0.7, 1.1, 26.7, 17.0, 73, 0.767, 97, 0.619, 64, 0.234, 0.512, 0.572, 9.5, 8.2, 10.5, 9.0, 108.5, 112.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 565297167), '2025-26', 51, 18.6, 7.1, 0.7, 2.8, 1.4, 0.3, 0.7, 14.7, 11.3, 81, 0.79, 117, 0.564, 150, 0.373, 0.562, 0.601, 9.9, 7.9, 10.6, 5.2, 120.9, 105.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 465477467), '2025-26', 8, 15.9, 7.0, 0.6, 5.4, 0.1, 0.9, 1.3, 17.4, 22.1, 17, 0.706, 33, 0.576, 2, 1.0, 0.629, 0.659, 12.4, 7.6, 13.0, 7.1, 124.2, 107.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 384028970), '2025-26', 2, 16.1, 7.0, 1.5, 2.0, 1.0, 0.0, 0.0, 11.9, 0.0, 0, 0.0, 5, 0.8, 4, 0.5, 0.778, 0.778, 9.0, 8.5, 10.5, 6.9, 164.1, 107.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 345560417), '2025-26', 32, 16.3, 7.0, 1.6, 3.4, 0.6, 0.1, 0.7, 17.1, 11.8, 30, 0.667, 91, 0.626, 80, 0.375, 0.596, 0.608, 10.4, 8.6, 12.1, 8.3, 123.0, 104.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 826953576), '2025-26', 43, 21.5, 7.0, 1.7, 2.5, 0.6, 0.1, 1.4, 15.8, 19.5, 43, 0.814, 130, 0.508, 118, 0.381, 0.538, 0.566, 9.6, 8.7, 11.2, 5.8, 104.2, 111.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 212112052), '2025-26', 53, 22.3, 7.0, 5.5, 1.9, 1.0, 0.2, 1.4, 16.1, 17.4, 75, 0.76, 157, 0.42, 184, 0.326, 0.457, 0.493, 8.9, 12.4, 14.4, 7.5, 111.0, 109.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 914511031), '2025-26', 26, 15.5, 6.9, 1.7, 2.0, 0.7, 0.4, 0.6, 17.6, 9.4, 18, 0.667, 95, 0.611, 50, 0.34, 0.576, 0.585, 8.8, 8.6, 10.6, 7.4, 122.3, 113.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 751200193), '2025-26', 34, 12.6, 6.9, 0.9, 1.4, 0.3, 0.1, 0.8, 23.4, 12.2, 40, 0.775, 70, 0.457, 124, 0.371, 0.521, 0.551, 8.2, 7.7, 9.1, 6.5, 104.6, 110.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 657218436), '2025-26', 38, 19.8, 6.9, 0.8, 8.8, 0.6, 0.9, 1.0, 15.3, 15.1, 62, 0.629, 158, 0.538, 49, 0.367, 0.541, 0.561, 15.7, 7.7, 16.4, 7.4, 123.9, 104.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 599256237), '2025-26', 19, 17.2, 6.8, 1.4, 3.8, 0.4, 0.3, 0.7, 15.0, 12.7, 32, 0.906, 29, 0.586, 60, 0.367, 0.562, 0.626, 10.6, 8.2, 12.0, 7.7, 124.7, 111.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 456890318), '2025-26', 27, 17.5, 6.8, 1.8, 5.8, 0.3, 0.3, 0.8, 16.8, 12.4, 33, 0.818, 48, 0.479, 107, 0.346, 0.506, 0.543, 12.6, 8.6, 14.4, 9.5, 118.7, 113.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 887496753), '2025-26', 45, 18.0, 6.8, 3.2, 2.0, 0.5, 0.3, 1.3, 17.3, 18.2, 62, 0.935, 113, 0.513, 143, 0.308, 0.484, 0.54, 8.8, 10.0, 11.9, 7.8, 109.8, 118.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 310570406), '2025-26', 48, 18.9, 6.8, 1.2, 3.0, 0.6, 0.3, 1.0, 17.4, 13.0, 47, 0.702, 142, 0.366, 165, 0.382, 0.477, 0.497, 9.8, 8.0, 11.0, 6.1, 98.4, 114.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 645915509), '2025-26', 47, 19.4, 6.8, 1.4, 2.5, 1.2, 0.1, 0.8, 14.0, 13.5, 45, 0.822, 93, 0.667, 151, 0.351, 0.58, 0.607, 9.3, 8.2, 10.7, 5.9, 120.3, 108.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 303288792), '2025-26', 38, 18.8, 6.7, 4.9, 1.8, 0.3, 0.0, 1.4, 18.0, 18.3, 13, 0.769, 158, 0.456, 87, 0.379, 0.496, 0.505, 8.5, 11.6, 13.4, 8.3, 106.9, 112.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 815838813), '2025-26', 44, 17.8, 6.7, 0.9, 2.7, 0.5, 1.0, 0.8, 18.0, 11.3, 34, 0.853, 81, 0.444, 186, 0.344, 0.494, 0.52, 9.4, 7.6, 10.3, 5.7, 102.8, 110.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 161415423), '2025-26', 35, 15.0, 6.7, 3.5, 2.5, 0.6, 0.3, 1.9, 25.8, 21.9, 26, 0.615, 159, 0.478, 72, 0.306, 0.472, 0.483, 9.2, 10.1, 12.6, 10.4, 96.1, 105.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 171777530), '2025-26', 41, 17.2, 6.6, 1.0, 3.1, 0.8, 0.7, 0.4, 15.4, 6.7, 51, 0.745, 140, 0.643, 83, 0.205, 0.518, 0.548, 9.7, 7.5, 10.6, 6.4, 122.3, 106.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 153297756), '2025-26', 37, 16.8, 6.6, 1.7, 2.0, 0.6, 0.1, 0.8, 18.6, 11.5, 25, 0.88, 112, 0.393, 119, 0.378, 0.483, 0.506, 8.6, 8.3, 10.3, 6.7, 104.0, 112.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 443277468), '2025-26', 47, 22.0, 6.6, 1.5, 2.4, 0.7, 0.3, 1.0, 13.0, 16.4, 73, 0.699, 94, 0.543, 155, 0.335, 0.518, 0.55, 8.9, 8.1, 10.4, 5.2, 111.8, 109.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 227967987), '2025-26', 42, 15.5, 6.5, 1.4, 2.2, 0.5, 0.1, 0.8, 18.8, 13.0, 60, 0.767, 137, 0.489, 96, 0.323, 0.487, 0.526, 8.7, 7.9, 10.1, 7.0, 109.0, 121.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 184943493), '2025-26', 53, 16.1, 6.5, 0.7, 2.2, 0.6, 0.1, 0.5, 16.9, 9.1, 67, 0.866, 133, 0.549, 148, 0.311, 0.505, 0.551, 8.7, 7.1, 9.3, 5.4, 111.7, 108.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 215282206), '2025-26', 28, 20.1, 6.5, 3.0, 1.5, 0.4, 0.4, 1.5, 18.1, 18.7, 34, 0.794, 97, 0.402, 81, 0.321, 0.438, 0.474, 8.0, 9.5, 11.0, 6.1, 97.1, 115.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 594988682), '2025-26', 36, 16.5, 6.4, 1.1, 6.5, 0.6, 1.4, 0.8, 12.0, 16.4, 26, 0.731, 123, 0.805, 14, 0.357, 0.777, 0.781, 13.0, 7.6, 14.1, 8.7, 146.3, 107.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 231494414), '2025-26', 38, 16.8, 6.4, 0.8, 5.6, 0.7, 0.8, 1.1, 15.9, 20.6, 74, 0.689, 164, 0.585, 1, 0.0, 0.582, 0.615, 11.9, 7.2, 12.8, 7.3, 119.9, 100.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 314686568), '2025-26', 31, 16.0, 6.4, 0.8, 4.4, 0.4, 0.2, 0.8, 15.1, 14.5, 30, 0.7, 71, 0.592, 70, 0.443, 0.628, 0.642, 10.7, 7.2, 11.6, 7.1, 121.5, 106.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 713312836), '2025-26', 41, 17.4, 6.4, 0.8, 3.8, 0.4, 0.6, 0.5, 11.6, 12.6, 74, 0.649, 137, 0.774, 1, 1.0, 0.779, 0.771, 10.2, 7.2, 11.0, 6.2, 152.2, 108.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 492446002), '2025-26', 3, 11.3, 6.3, 0.3, 1.3, 1.7, 0.3, 0.7, 27.2, 9.8, 4, 0.75, 8, 0.625, 10, 0.2, 0.444, 0.481, 7.7, 6.7, 8.0, 4.8, 89.5, 96.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 112880533), '2025-26', 43, 18.2, 6.3, 0.9, 2.1, 0.9, 0.1, 0.5, 14.1, 9.6, 45, 0.8, 79, 0.595, 137, 0.343, 0.544, 0.575, 8.4, 7.2, 9.3, 5.0, 116.2, 106.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 27890567), '2025-26', 52, 17.4, 6.3, 2.8, 2.6, 1.5, 0.3, 0.9, 15.8, 14.6, 87, 0.839, 156, 0.481, 113, 0.31, 0.474, 0.534, 8.9, 9.1, 11.7, 8.2, 116.6, 105.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 694944003), '2025-26', 41, 21.4, 6.2, 1.7, 3.0, 0.5, 0.1, 0.6, 13.0, 9.1, 35, 0.771, 85, 0.482, 145, 0.331, 0.491, 0.515, 9.2, 7.9, 10.9, 5.9, 109.8, 113.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 819994691), '2025-26', 34, 25.7, 6.1, 1.2, 4.0, 1.2, 0.4, 0.9, 10.4, 15.0, 42, 0.738, 97, 0.598, 78, 0.256, 0.503, 0.535, 10.1, 7.3, 11.3, 4.8, 114.9, 112.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 244043725), '2025-26', 9, 16.9, 6.1, 3.3, 2.1, 1.3, 0.1, 1.3, 17.6, 19.6, 11, 0.545, 33, 0.515, 16, 0.313, 0.5, 0.511, 8.2, 9.4, 11.6, 8.2, 107.9, 107.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 873174557), '2025-26', 8, 21.1, 6.1, 1.0, 1.6, 0.8, 0.3, 0.6, 11.6, 11.5, 3, 1.0, 10, 0.5, 28, 0.429, 0.605, 0.623, 7.8, 7.1, 8.8, 4.1, 113.4, 110.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 277703117), '2025-26', 39, 18.9, 6.1, 1.6, 1.6, 0.5, 0.1, 1.0, 14.7, 16.6, 47, 0.894, 95, 0.579, 95, 0.295, 0.511, 0.56, 7.7, 7.6, 9.3, 5.3, 108.2, 116.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 406271098), '2025-26', 33, 18.2, 6.1, 2.2, 2.8, 1.4, 0.4, 0.8, 15.2, 13.1, 30, 0.833, 67, 0.612, 105, 0.295, 0.509, 0.54, 8.8, 8.2, 11.0, 7.4, 113.2, 103.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 866441466), '2025-26', 37, 19.3, 6.1, 2.5, 5.1, 0.6, 0.6, 1.0, 15.4, 16.0, 54, 0.759, 54, 0.5, 140, 0.307, 0.472, 0.514, 11.1, 8.6, 13.6, 8.8, 109.0, 97.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 767142214), '2025-26', 1, 18.5, 6.0, 0.0, 3.0, 2.0, 0.0, 1.0, 13.4, 16.7, 0, 0.0, 1, 0.0, 4, 0.5, 0.6, 0.6, 9.0, 6.0, 9.0, 0.0, 94.2, 108.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 304465382), '2025-26', 14, 15.9, 6.0, 2.5, 2.1, 1.1, 0.0, 1.7, 22.7, 21.2, 16, 0.625, 50, 0.38, 39, 0.308, 0.416, 0.437, 8.1, 8.5, 10.6, 7.9, 89.7, 110.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 548425100), '2025-26', 29, 15.6, 6.0, 2.6, 3.3, 0.3, 0.3, 1.0, 16.8, 17.8, 38, 0.711, 109, 0.541, 25, 0.4, 0.552, 0.581, 9.4, 8.7, 12.0, 9.5, 119.3, 105.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 26318022), '2025-26', 46, 23.6, 6.0, 0.8, 3.1, 0.9, 0.4, 0.6, 9.8, 11.7, 45, 0.622, 80, 0.638, 116, 0.414, 0.628, 0.635, 9.1, 6.8, 9.9, 4.2, 127.4, 109.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 679122201), '2025-26', 45, 19.6, 6.0, 1.6, 4.2, 0.9, 0.4, 1.0, 14.4, 14.8, 28, 0.643, 136, 0.537, 111, 0.324, 0.514, 0.524, 10.2, 7.6, 11.8, 7.0, 112.1, 105.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 831125866), '2025-26', 49, 20.2, 6.0, 1.4, 3.0, 0.6, 0.3, 1.1, 15.2, 16.6, 50, 0.72, 157, 0.465, 119, 0.319, 0.471, 0.497, 9.0, 7.5, 10.4, 5.8, 97.9, 115.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 887859050), '2025-26', 38, 19.4, 6.0, 0.9, 2.3, 0.6, 0.4, 0.6, 13.4, 9.3, 31, 0.613, 140, 0.586, 64, 0.234, 0.512, 0.524, 8.3, 6.9, 9.2, 4.8, 108.4, 119.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 680772582), '2025-26', 42, 16.0, 5.9, 1.2, 5.0, 0.7, 1.2, 0.5, 12.2, 12.8, 52, 0.731, 140, 0.721, 10, 0.2, 0.693, 0.711, 10.9, 7.0, 12.1, 8.2, 148.3, 102.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 142123122), '2025-26', 24, 12.6, 5.8, 1.1, 0.8, 0.4, 0.1, 0.8, 21.3, 12.6, 11, 0.636, 57, 0.456, 68, 0.397, 0.532, 0.539, 6.6, 7.0, 7.7, 5.5, 103.1, 114.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 449597390), '2025-26', 36, 14.4, 5.8, 2.9, 2.2, 0.6, 0.1, 1.1, 19.2, 18.0, 30, 0.833, 117, 0.419, 65, 0.431, 0.5, 0.53, 7.9, 8.7, 10.8, 9.3, 112.7, 110.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 589389103), '2025-26', 33, 15.9, 5.8, 1.0, 3.6, 0.7, 0.4, 0.6, 13.8, 12.8, 26, 0.769, 59, 0.593, 77, 0.442, 0.632, 0.651, 9.4, 6.8, 10.4, 6.9, 133.4, 105.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 829490984), '2025-26', 43, 22.8, 5.8, 1.6, 4.1, 0.8, 0.4, 0.3, 9.8, 6.0, 36, 0.75, 54, 0.63, 150, 0.34, 0.542, 0.564, 9.9, 7.3, 11.5, 5.9, 127.6, 110.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 406627494), '2025-26', 32, 22.8, 5.8, 1.5, 8.6, 0.7, 0.6, 1.1, 12.0, 20.1, 81, 0.58, 139, 0.504, 0, 0.0, 0.504, 0.535, 14.5, 7.3, 16.0, 7.4, 124.8, 107.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 823161476), '2025-26', 35, 13.3, 5.7, 1.0, 0.9, 0.5, 0.1, 0.6, 17.6, 11.5, 33, 0.848, 53, 0.434, 108, 0.389, 0.534, 0.57, 6.6, 6.7, 7.5, 5.2, 118.7, 108.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 481086126), '2025-26', 36, 18.3, 5.7, 2.8, 2.8, 0.4, 0.1, 0.8, 14.7, 13.4, 11, 0.909, 86, 0.477, 101, 0.376, 0.524, 0.537, 8.5, 8.5, 11.3, 7.8, 115.3, 116.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 775315636), '2025-26', 36, 12.1, 5.7, 1.2, 4.3, 0.8, 0.6, 0.9, 18.9, 18.6, 37, 0.595, 126, 0.635, 23, 0.348, 0.617, 0.623, 10.0, 6.9, 11.2, 10.2, 122.7, 96.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 313744354), '2025-26', 52, 24.2, 5.7, 1.9, 3.5, 0.6, 0.3, 0.9, 10.8, 15.6, 76, 0.855, 101, 0.406, 142, 0.352, 0.477, 0.537, 9.2, 7.6, 11.1, 5.6, 114.1, 111.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 300077631), '2025-26', 16, 10.2, 5.6, 2.0, 0.9, 0.7, 0.1, 0.7, 21.2, 13.9, 11, 0.909, 24, 0.542, 44, 0.409, 0.588, 0.618, 6.6, 7.6, 8.6, 8.5, 124.5, 105.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 767142214), '2025-26', 43, 17.6, 5.6, 0.6, 1.3, 1.1, 0.5, 0.5, 13.8, 9.1, 32, 0.625, 65, 0.462, 144, 0.368, 0.524, 0.536, 6.8, 6.2, 7.4, 3.7, 105.7, 115.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 312299972), '2025-26', 46, 19.2, 5.6, 1.2, 5.7, 0.3, 1.4, 0.7, 12.7, 14.1, 62, 0.581, 206, 0.534, 1, 0.0, 0.531, 0.546, 11.2, 6.8, 12.4, 7.0, 125.3, 114.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 691768737), '2025-26', 11, 17.5, 5.5, 1.0, 3.9, 0.5, 0.2, 0.6, 15.2, 11.0, 15, 0.8, 15, 0.6, 41, 0.244, 0.429, 0.479, 9.4, 6.5, 10.4, 6.4, 108.1, 110.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 370884837), '2025-26', 6, 12.3, 5.5, 0.5, 0.3, 0.7, 0.2, 0.5, 14.3, 12.4, 2, 0.5, 7, 0.571, 14, 0.571, 0.762, 0.754, 5.8, 6.0, 6.3, 3.1, 130.3, 117.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 962644785), '2025-26', 46, 18.3, 5.5, 0.8, 4.3, 0.8, 0.5, 0.5, 11.6, 11.6, 44, 0.773, 101, 0.624, 82, 0.378, 0.598, 0.625, 9.8, 6.3, 10.6, 5.8, 132.9, 102.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 213433990), '2025-26', 52, 20.1, 5.5, 1.8, 4.5, 1.0, 0.6, 1.3, 12.1, 24.9, 69, 0.493, 201, 0.622, 1, 0.0, 0.619, 0.611, 9.9, 7.2, 11.7, 7.1, 114.5, 102.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 6430084), '2025-26', 33, 14.5, 5.5, 0.6, 1.5, 0.3, 0.1, 0.5, 16.9, 9.6, 44, 0.75, 56, 0.411, 94, 0.362, 0.493, 0.534, 7.0, 6.1, 7.6, 4.7, 106.3, 114.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 194789588), '2025-26', 23, 11.1, 5.4, 0.8, 1.1, 0.6, 0.1, 0.5, 19.7, 9.6, 10, 1.0, 25, 0.36, 78, 0.41, 0.553, 0.577, 6.5, 6.2, 7.3, 6.1, 111.1, 114.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 928777279), '2025-26', 27, 13.0, 5.4, 0.7, 2.7, 0.3, 0.1, 0.7, 16.9, 15.4, 46, 0.87, 60, 0.533, 44, 0.318, 0.51, 0.588, 8.1, 6.1, 8.8, 6.7, 117.1, 113.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 825350461), '2025-26', 50, 20.0, 5.4, 0.9, 2.9, 0.9, 0.2, 0.7, 11.4, 13.6, 55, 0.6, 98, 0.5, 118, 0.398, 0.553, 0.566, 8.3, 6.4, 9.2, 4.8, 119.7, 109.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 704522187), '2025-26', 36, 11.2, 5.3, 0.5, 2.1, 0.4, 0.4, 0.5, 17.5, 12.0, 25, 0.56, 75, 0.667, 64, 0.406, 0.64, 0.64, 7.4, 5.8, 7.9, 6.3, 120.8, 106.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 994025426), '2025-26', 15, 13.1, 5.2, 0.7, 1.1, 0.4, 0.2, 0.2, 14.0, 5.4, 23, 0.826, 6, 0.667, 46, 0.37, 0.567, 0.628, 6.3, 5.9, 7.0, 4.8, 128.5, 112.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 450259404), '2025-26', 5, 10.9, 5.2, 0.8, 5.6, 0.4, 1.0, 0.8, 19.4, 20.7, 15, 0.8, 15, 0.467, 0, 0.0, 0.467, 0.602, 10.8, 6.0, 11.6, 10.5, 128.6, 94.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 432502011), '2025-26', 29, 12.2, 5.2, 1.0, 1.9, 0.4, 0.1, 0.5, 18.8, 11.4, 46, 0.804, 65, 0.538, 51, 0.294, 0.496, 0.558, 7.1, 6.2, 8.1, 7.0, 112.4, 112.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 126054963), '2025-26', 34, 18.5, 5.2, 1.1, 4.4, 0.6, 0.2, 0.8, 12.8, 16.1, 35, 0.486, 75, 0.6, 71, 0.324, 0.545, 0.545, 9.6, 6.3, 10.7, 6.3, 106.7, 109.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 805352061), '2025-26', 41, 13.6, 5.2, 1.3, 2.6, 0.6, 0.3, 0.9, 15.2, 19.3, 33, 0.636, 60, 0.717, 90, 0.389, 0.637, 0.644, 7.8, 6.5, 9.1, 7.6, 118.6, 106.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 605812096), '2025-26', 36, 10.1, 5.1, 0.6, 2.8, 0.2, 0.4, 0.4, 17.9, 10.5, 32, 0.813, 64, 0.688, 64, 0.359, 0.613, 0.644, 7.9, 5.7, 8.4, 8.1, 128.9, 105.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 8428259), '2025-26', 36, 12.0, 5.1, 1.2, 1.4, 0.3, 0.1, 0.6, 17.8, 12.5, 35, 0.714, 85, 0.553, 62, 0.355, 0.544, 0.57, 6.5, 6.3, 7.7, 6.8, 114.7, 111.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 87192522), '2025-26', 26, 20.4, 5.1, 1.1, 7.4, 0.7, 1.7, 0.8, 10.4, 18.4, 36, 0.556, 92, 0.609, 1, 0.0, 0.602, 0.606, 12.5, 6.2, 13.5, 6.8, 132.4, 102.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 963031828), '2025-26', 31, 13.7, 5.1, 0.3, 2.7, 0.4, 0.6, 0.8, 15.6, 18.3, 43, 0.558, 107, 0.617, 4, 0.25, 0.608, 0.612, 7.8, 5.4, 8.1, 4.7, 109.1, 114.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 82545116), '2025-26', 1, 20.9, 5.0, 0.0, 5.0, 1.0, 0.0, 1.0, 15.8, 12.5, 0, 0.0, 4, 0.25, 3, 0.333, 0.357, 0.357, 10.0, 5.0, 10.0, 0.0, 80.1, 107.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 948609575), '2025-26', 4, 19.1, 5.0, 5.5, 4.0, 1.3, 0.0, 1.0, 13.1, 18.7, 6, 1.0, 4, 0.25, 13, 0.308, 0.412, 0.509, 9.0, 10.5, 14.5, 10.0, 127.3, 113.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 267931795), '2025-26', 2, 6.1, 5.0, 0.0, 0.5, 0.0, 0.0, 0.5, 21.4, 18.4, 2, 1.0, 1, 1.0, 3, 0.667, 1.0, 1.025, 5.5, 5.0, 5.5, 0.0, 150.5, 106.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 401957822), '2025-26', 20, 10.4, 5.0, 0.6, 2.0, 0.4, 0.2, 0.4, 15.7, 9.5, 0, 0.0, 30, 0.7, 37, 0.514, 0.739, 0.739, 7.0, 5.6, 7.6, 7.0, 135.8, 114.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 324158189), '2025-26', 4, 12.2, 5.0, 0.8, 1.0, 2.5, 0.0, 0.3, 10.6, 8.7, 4, 1.0, 4, 0.5, 6, 0.667, 0.8, 0.85, 6.0, 5.8, 6.8, 5.2, 164.5, 97.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 887751094), '2025-26', 18, 13.8, 5.0, 3.3, 1.9, 0.3, 0.1, 1.2, 19.2, 19.6, 19, 0.737, 44, 0.386, 42, 0.333, 0.442, 0.477, 6.9, 8.3, 10.2, 9.1, 105.6, 110.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 959702375), '2025-26', 45, 13.8, 5.0, 3.1, 1.9, 0.4, 0.1, 1.1, 18.4, 18.9, 18, 0.667, 120, 0.475, 94, 0.351, 0.498, 0.507, 6.9, 8.1, 10.0, 9.0, 108.9, 108.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 545989530), '2025-26', 47, 12.7, 5.0, 1.5, 3.1, 0.5, 0.3, 0.9, 16.9, 17.2, 14, 0.571, 136, 0.64, 56, 0.304, 0.586, 0.588, 8.1, 6.4, 9.6, 9.0, 116.5, 103.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 838561457), '2025-26', 35, 14.0, 4.9, 1.2, 3.8, 0.6, 0.4, 0.9, 16.7, 16.8, 37, 0.622, 86, 0.453, 62, 0.387, 0.507, 0.527, 8.7, 6.1, 9.9, 8.0, 111.4, 106.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 914107269), '2025-26', 13, 12.9, 4.9, 2.0, 1.6, 0.2, 0.3, 1.1, 22.6, 16.2, 9, 0.889, 34, 0.294, 38, 0.316, 0.389, 0.421, 6.5, 6.9, 8.5, 7.8, 90.8, 113.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 608370875), '2025-26', 31, 10.9, 4.9, 0.8, 1.4, 0.2, 0.1, 0.2, 18.6, 4.9, 18, 0.944, 50, 0.48, 84, 0.345, 0.504, 0.536, 6.3, 5.7, 7.1, 6.5, 116.1, 111.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 712917450), '2025-26', 34, 11.0, 4.9, 0.6, 2.6, 0.2, 0.5, 0.4, 17.3, 8.4, 17, 0.529, 71, 0.662, 59, 0.356, 0.604, 0.604, 7.5, 5.4, 8.0, 7.2, 120.8, 102.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 82545116), '2025-26', 33, 14.9, 4.9, 0.7, 3.0, 0.4, 0.2, 0.6, 13.6, 13.5, 32, 0.719, 58, 0.586, 70, 0.343, 0.547, 0.574, 7.9, 5.7, 8.7, 5.8, 114.2, 118.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 356708149), '2025-26', 38, 10.5, 4.9, 1.4, 1.1, 0.4, 0.0, 0.6, 21.0, 12.1, 27, 0.852, 66, 0.455, 101, 0.347, 0.494, 0.525, 6.0, 6.3, 7.4, 7.5, 108.5, 108.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 595025438), '2025-26', 46, 18.0, 4.9, 3.2, 3.5, 1.0, 0.6, 0.9, 12.4, 17.0, 29, 0.552, 128, 0.508, 67, 0.388, 0.533, 0.539, 8.3, 8.1, 11.5, 8.4, 124.1, 111.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 794770124), '2025-26', 41, 19.5, 4.9, 1.4, 5.0, 1.0, 0.3, 1.0, 12.2, 19.3, 41, 0.634, 97, 0.598, 70, 0.286, 0.527, 0.546, 9.9, 6.3, 11.3, 6.7, 114.4, 108.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 355348990), '2025-26', 37, 19.9, 4.8, 1.0, 8.9, 0.8, 1.1, 0.6, 9.3, 17.4, 55, 0.382, 114, 0.693, 0, 0.0, 0.693, 0.648, 13.8, 5.8, 14.8, 7.0, 150.2, 101.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 466915712), '2025-26', 51, 16.3, 4.8, 1.0, 3.6, 0.8, 0.5, 0.5, 13.3, 11.1, 50, 0.62, 124, 0.565, 93, 0.269, 0.495, 0.515, 8.5, 5.8, 9.5, 6.3, 112.3, 107.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 311120686), '2025-26', 29, 19.3, 4.8, 1.3, 0.9, 0.5, 0.0, 0.4, 11.4, 8.4, 11, 0.909, 27, 0.259, 103, 0.369, 0.492, 0.512, 5.7, 6.0, 7.0, 3.7, 110.2, 113.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 939667879), '2025-26', 3, 10.0, 4.7, 2.0, 0.3, 0.7, 0.3, 0.3, 16.3, 9.1, 0, 0.0, 5, 0.8, 5, 0.4, 0.7, 0.7, 5.0, 6.7, 7.0, 5.7, 142.5, 122.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 183477687), '2025-26', 41, 12.8, 4.7, 0.7, 3.1, 0.4, 0.7, 0.5, 13.2, 12.6, 15, 0.533, 90, 0.7, 49, 0.408, 0.669, 0.666, 7.8, 5.5, 8.6, 6.8, 128.0, 109.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 381346456), '2025-26', 28, 9.8, 4.6, 0.8, 1.6, 0.4, 0.1, 0.5, 18.3, 14.1, 34, 0.824, 54, 0.537, 37, 0.378, 0.549, 0.604, 6.1, 5.4, 7.0, 7.4, 119.0, 118.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 262256811), '2025-26', 17, 17.6, 4.6, 0.7, 5.2, 0.4, 0.1, 0.6, 14.0, 10.7, 14, 0.929, 50, 0.42, 33, 0.242, 0.398, 0.443, 9.8, 5.4, 10.5, 5.8, 104.7, 112.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 550766096), '2025-26', 41, 11.5, 4.6, 0.3, 1.4, 0.2, 0.2, 0.4, 17.3, 10.0, 18, 0.722, 66, 0.636, 96, 0.313, 0.537, 0.55, 6.0, 4.9, 6.3, 4.3, 106.4, 113.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 46299684), '2025-26', 38, 13.9, 4.6, 1.1, 1.5, 0.6, 0.2, 0.6, 15.1, 12.2, 19, 0.895, 53, 0.509, 105, 0.333, 0.503, 0.529, 6.1, 5.7, 7.2, 5.7, 109.5, 108.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 184154691), '2025-26', 19, 17.3, 4.6, 2.7, 1.5, 0.7, 0.2, 1.9, 18.2, 28.3, 24, 0.75, 47, 0.383, 44, 0.25, 0.379, 0.428, 6.1, 7.3, 8.7, 6.1, 84.3, 115.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 713147305), '2025-26', 35, 20.8, 4.6, 3.9, 4.0, 1.3, 0.3, 1.5, 13.5, 22.8, 21, 0.667, 29, 0.448, 147, 0.272, 0.415, 0.432, 8.6, 8.5, 12.5, 8.0, 100.2, 109.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 110339533), '2025-26', 28, 15.9, 4.5, 1.1, 1.9, 0.6, 0.1, 0.6, 11.3, 15.9, 14, 0.857, 26, 0.538, 69, 0.42, 0.605, 0.628, 6.5, 5.6, 7.5, 5.3, 125.7, 112.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 434142240), '2025-26', 21, 15.5, 4.5, 1.4, 1.7, 0.5, 0.3, 0.6, 14.0, 11.8, 16, 0.688, 29, 0.517, 60, 0.3, 0.472, 0.495, 6.2, 5.9, 7.6, 5.7, 104.8, 109.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 820057491), '2025-26', 2, 11.7, 4.5, 0.0, 5.0, 0.0, 0.0, 0.5, 12.3, 16.1, 2, 0.5, 5, 0.8, 0, 0.0, 0.8, 0.765, 9.5, 4.5, 9.5, 0.0, 144.7, 117.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 929285730), '2025-26', 22, 12.8, 4.5, 0.6, 1.3, 0.3, 0.0, 0.7, 16.1, 15.6, 27, 0.778, 44, 0.386, 37, 0.405, 0.488, 0.538, 5.8, 5.2, 6.5, 4.7, 103.8, 108.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 262256811), '2025-26', 5, 12.2, 4.4, 0.6, 3.0, 0.4, 0.0, 0.4, 14.3, 10.3, 4, 1.0, 9, 0.667, 8, 0.25, 0.529, 0.586, 7.4, 5.0, 8.0, 6.5, 121.8, 111.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 66498852), '2025-26', 45, 15.3, 4.4, 1.0, 2.0, 0.7, 0.1, 0.3, 14.6, 6.0, 15, 0.733, 132, 0.477, 88, 0.239, 0.43, 0.441, 6.5, 5.5, 7.5, 5.4, 104.1, 113.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 664323306), '2025-26', 44, 18.5, 4.4, 2.9, 1.8, 0.6, 0.3, 0.6, 11.5, 13.8, 46, 0.891, 43, 0.326, 131, 0.321, 0.443, 0.502, 6.2, 7.3, 9.1, 6.1, 118.2, 111.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 993775213), '2025-26', 50, 19.6, 4.4, 0.8, 2.6, 0.7, 0.4, 0.7, 10.0, 15.3, 11, 0.818, 9, 0.444, 174, 0.391, 0.579, 0.588, 7.0, 5.3, 7.9, 4.3, 110.4, 112.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 489126512), '2025-26', 3, 12.5, 4.3, 1.0, 3.0, 0.7, 0.3, 0.3, 12.2, 9.1, 0, 0.0, 5, 1.0, 5, 0.2, 0.65, 0.65, 7.3, 5.3, 8.3, 7.5, 135.5, 115.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 822911408), '2025-26', 27, 13.1, 4.3, 1.0, 2.7, 0.4, 0.1, 0.7, 14.8, 15.3, 16, 0.688, 64, 0.609, 35, 0.257, 0.53, 0.547, 7.0, 5.3, 8.0, 6.9, 112.7, 100.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 14439962), '2025-26', 17, 10.6, 4.3, 1.5, 1.9, 0.6, 0.2, 0.8, 21.8, 15.0, 14, 0.929, 40, 0.525, 33, 0.182, 0.411, 0.461, 6.2, 5.8, 7.7, 8.7, 97.8, 111.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 224122299), '2025-26', 38, 13.1, 4.3, 0.6, 2.8, 0.3, 0.5, 0.6, 14.1, 14.6, 40, 0.825, 82, 0.598, 40, 0.275, 0.537, 0.587, 7.1, 4.9, 7.7, 5.9, 117.4, 109.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 917683190), '2025-26', 7, 16.5, 4.3, 1.9, 5.3, 0.6, 1.6, 1.4, 11.8, 35.3, 10, 0.8, 18, 0.611, 0, 0.0, 0.611, 0.67, 9.6, 6.1, 11.4, 8.5, 122.2, 96.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 87020483), '2025-26', 35, 14.1, 4.3, 0.7, 1.8, 0.2, 0.2, 0.6, 16.9, 11.5, 18, 0.778, 76, 0.342, 93, 0.301, 0.402, 0.424, 6.1, 5.0, 6.8, 5.0, 89.3, 121.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 35819894), '2025-26', 42, 15.5, 4.3, 0.7, 2.3, 0.4, 0.3, 0.5, 13.2, 10.0, 29, 0.862, 105, 0.571, 65, 0.185, 0.459, 0.495, 6.6, 5.0, 7.3, 4.9, 106.6, 106.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 6084577), '2025-26', 26, 15.8, 4.2, 2.3, 2.3, 0.7, 0.0, 0.9, 13.0, 18.8, 23, 0.87, 38, 0.237, 61, 0.393, 0.455, 0.504, 6.6, 6.5, 8.8, 7.1, 110.1, 104.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 286175439), '2025-26', 36, 11.4, 4.2, 0.9, 3.1, 0.4, 0.5, 0.5, 14.7, 15.0, 52, 0.558, 101, 0.584, 1, 1.0, 0.593, 0.601, 7.3, 5.1, 8.2, 8.0, 127.3, 106.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 813727657), '2025-26', 12, 8.9, 4.1, 0.3, 1.8, 0.3, 0.3, 0.3, 19.6, 8.8, 9, 1.0, 19, 0.421, 22, 0.364, 0.488, 0.545, 5.9, 4.3, 6.2, 5.9, 112.2, 101.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 570548518), '2025-26', 28, 12.2, 4.1, 0.8, 2.1, 0.2, 0.1, 0.4, 14.0, 12.0, 31, 0.806, 30, 0.4, 58, 0.379, 0.511, 0.566, 6.3, 4.9, 7.1, 6.2, 119.5, 108.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 400714289), '2025-26', 14, 12.5, 4.1, 1.1, 1.7, 0.0, 0.3, 0.4, 13.0, 10.3, 8, 0.75, 9, 0.556, 34, 0.412, 0.605, 0.623, 5.9, 5.2, 6.9, 6.3, 127.1, 113.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 654830436), '2025-26', 9, 10.9, 4.1, 1.3, 1.8, 0.1, 0.1, 1.2, 17.8, 26.7, 2, 0.5, 19, 0.632, 11, 0.364, 0.6, 0.599, 5.9, 5.4, 7.2, 7.8, 99.9, 116.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 91051524), '2025-26', 42, 16.2, 4.1, 0.2, 3.9, 0.3, 1.3, 0.7, 10.5, 21.5, 66, 0.652, 104, 0.587, 5, 0.4, 0.587, 0.619, 8.0, 4.3, 8.2, 3.6, 123.2, 105.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 492446002), '2025-26', 1, 13.5, 4.0, 1.0, 1.0, 0.0, 1.0, 1.0, 25.0, 12.5, 0, 0.0, 5, 0.4, 2, 0.0, 0.286, 0.286, 5.0, 5.0, 6.0, 4.7, 58.9, 109.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 24503326), '2025-26', 2, 7.0, 4.0, 1.0, 0.5, 1.0, 0.5, 0.5, 26.5, 11.1, 0, 0.0, 4, 1.0, 4, 0.0, 0.5, 0.5, 4.5, 5.0, 5.5, 7.2, 99.8, 95.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 731388072), '2025-26', 2, 10.2, 4.0, 0.5, 3.0, 1.0, 0.0, 0.0, 21.8, 0.0, 4, 0.5, 9, 0.333, 0, 0.0, 0.333, 0.372, 7.0, 4.5, 7.5, 7.1, 105.3, 90.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 844722830), '2025-26', 23, 8.8, 4.0, 0.7, 2.7, 0.5, 0.2, 0.1, 15.5, 4.3, 18, 0.722, 31, 0.581, 36, 0.389, 0.582, 0.607, 6.6, 4.7, 7.3, 8.9, 136.2, 94.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 811860861), '2025-26', 38, 11.0, 4.0, 0.5, 2.8, 0.2, 0.2, 0.4, 14.4, 13.8, 43, 0.744, 104, 0.558, 2, 0.5, 0.561, 0.604, 6.8, 4.5, 7.3, 6.5, 128.6, 107.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 870260299), '2025-26', 7, 15.1, 3.9, 0.6, 3.0, 0.3, 1.0, 0.7, 12.3, 16.4, 2, 1.0, 21, 0.524, 4, 0.25, 0.5, 0.522, 6.9, 4.4, 7.4, 5.1, 103.2, 99.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 901468386), '2025-26', 24, 16.0, 3.9, 0.7, 3.5, 0.8, 0.4, 0.6, 11.6, 14.5, 24, 0.75, 36, 0.583, 46, 0.239, 0.457, 0.502, 7.4, 4.6, 8.1, 5.3, 106.5, 107.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 692177503), '2025-26', 47, 15.4, 3.9, 0.6, 3.4, 0.6, 0.3, 0.6, 11.6, 15.1, 21, 0.476, 84, 0.583, 73, 0.342, 0.551, 0.55, 7.3, 4.5, 7.9, 5.2, 112.2, 103.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 284381403), '2025-26', 40, 11.1, 3.9, 2.0, 1.2, 0.5, 0.1, 0.6, 15.3, 13.9, 11, 0.545, 52, 0.442, 84, 0.405, 0.544, 0.547, 5.0, 5.9, 7.0, 7.6, 112.2, 111.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 71478132), '2025-26', 44, 11.8, 3.9, 0.6, 4.6, 0.5, 0.7, 0.4, 14.0, 11.3, 36, 0.556, 141, 0.532, 0, 0.0, 0.532, 0.542, 8.5, 4.4, 9.1, 7.5, 127.1, 106.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 233411897), '2025-26', 50, 13.9, 3.8, 0.6, 1.9, 0.7, 0.2, 0.3, 12.2, 9.0, 56, 0.643, 94, 0.521, 67, 0.269, 0.472, 0.506, 5.7, 4.4, 6.3, 4.7, 115.5, 107.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 312255267), '2025-26', 27, 10.9, 3.7, 1.0, 1.6, 0.1, 0.3, 0.3, 14.9, 8.0, 6, 1.0, 42, 0.476, 49, 0.367, 0.516, 0.534, 5.3, 4.7, 6.3, 6.6, 114.3, 106.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 514102149), '2025-26', 30, 12.0, 3.7, 0.2, 4.5, 0.3, 1.1, 0.7, 13.5, 24.1, 56, 0.482, 69, 0.609, 0, 0.0, 0.609, 0.593, 8.2, 3.9, 8.4, 5.0, 118.6, 98.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 606589758), '2025-26', 45, 12.1, 3.7, 0.5, 3.1, 0.4, 0.2, 0.4, 14.1, 10.5, 44, 0.727, 81, 0.506, 63, 0.27, 0.462, 0.505, 6.7, 4.1, 7.2, 5.9, 114.8, 103.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 242018481), '2025-26', 47, 13.9, 3.6, 0.9, 2.5, 0.6, 0.1, 0.4, 10.4, 13.1, 12, 0.833, 35, 0.571, 97, 0.402, 0.595, 0.608, 6.1, 4.5, 7.0, 5.8, 124.8, 105.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 373727502), '2025-26', 36, 10.1, 3.6, 0.6, 1.6, 0.3, 0.1, 0.4, 16.8, 13.4, 42, 0.762, 62, 0.484, 41, 0.293, 0.466, 0.527, 5.2, 4.1, 5.8, 6.0, 107.7, 116.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 7160969), '2025-26', 24, 13.2, 3.6, 1.0, 2.6, 0.6, 0.2, 0.5, 13.5, 10.9, 5, 0.6, 43, 0.442, 47, 0.319, 0.461, 0.466, 6.2, 4.6, 7.2, 6.4, 106.8, 102.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 874558578), '2025-26', 28, 9.5, 3.5, 1.3, 1.9, 0.5, 0.0, 0.6, 16.0, 18.1, 30, 0.667, 34, 0.735, 38, 0.237, 0.535, 0.569, 5.4, 4.7, 6.6, 8.6, 118.4, 101.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 535024796), '2025-26', 2, 15.3, 3.5, 1.0, 7.5, 0.5, 0.5, 0.5, 14.0, 10.9, 3, 0.333, 8, 0.375, 0, 0.0, 0.375, 0.376, 11.0, 4.5, 12.0, 7.8, 111.8, 97.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 360941219), '2025-26', 35, 9.3, 3.5, 1.7, 1.2, 0.5, 0.1, 1.0, 24.0, 20.3, 20, 0.75, 108, 0.324, 33, 0.364, 0.376, 0.404, 4.6, 5.1, 6.3, 8.3, 84.9, 105.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 917351478), '2025-26', 31, 8.6, 3.5, 0.3, 2.1, 0.1, 0.5, 0.5, 15.7, 21.4, 34, 0.676, 59, 0.712, 3, 0.0, 0.677, 0.695, 5.6, 3.7, 5.8, 6.1, 124.9, 105.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 756030702), '2025-26', 34, 11.1, 3.5, 1.3, 1.9, 0.6, 0.3, 0.6, 14.6, 17.0, 17, 0.529, 56, 0.464, 46, 0.413, 0.534, 0.539, 5.4, 4.7, 6.6, 7.4, 109.3, 111.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 98570657), '2025-26', 8, 9.5, 3.4, 0.3, 0.6, 0.0, 0.1, 0.4, 15.2, 11.1, 0, 0.0, 0, 0.0, 24, 0.375, 0.563, 0.563, 4.0, 3.6, 4.3, 3.6, 100.4, 121.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 753158891), '2025-26', 4, 14.6, 3.3, 0.8, 2.0, 0.0, 0.3, 1.3, 11.5, 32.9, 2, 0.5, 10, 0.6, 0, 0.0, 0.6, 0.597, 5.3, 4.0, 6.0, 4.8, 99.0, 107.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 33905150), '2025-26', 19, 8.8, 3.3, 0.7, 1.0, 0.3, 0.0, 0.1, 14.5, 3.5, 5, 1.0, 11, 0.545, 44, 0.341, 0.518, 0.542, 4.3, 3.9, 4.9, 6.0, 125.9, 113.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 114736843), '2025-26', 44, 13.9, 3.3, 1.6, 2.4, 0.7, 0.3, 0.7, 11.8, 19.1, 33, 0.606, 91, 0.473, 36, 0.361, 0.492, 0.512, 5.7, 4.9, 7.3, 6.7, 106.0, 105.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 795288705), '2025-26', 28, 9.1, 3.2, 0.3, 3.3, 0.1, 0.5, 0.9, 18.0, 26.0, 28, 0.679, 71, 0.493, 0, 0.0, 0.493, 0.534, 6.4, 3.5, 6.7, 6.5, 101.3, 99.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 765311334), '2025-26', 30, 14.5, 3.2, 1.3, 3.1, 1.0, 0.4, 0.5, 8.6, 16.4, 13, 0.615, 32, 0.75, 39, 0.333, 0.613, 0.619, 6.2, 4.5, 7.6, 6.5, 126.4, 108.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 468558754), '2025-26', 37, 8.6, 3.2, 0.4, 1.4, 0.1, 0.1, 0.4, 14.0, 13.8, 9, 0.667, 37, 0.649, 50, 0.44, 0.655, 0.66, 4.7, 3.6, 5.1, 5.6, 118.3, 109.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 750556837), '2025-26', 16, 8.0, 3.1, 0.9, 1.3, 0.3, 0.0, 0.3, 15.1, 11.5, 3, 0.667, 24, 0.667, 14, 0.357, 0.618, 0.623, 4.4, 3.9, 5.3, 7.7, 129.2, 112.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 289095253), '2025-26', 7, 3.7, 3.1, 0.3, 0.3, 0.0, 0.0, 0.6, 34.8, 23.1, 8, 0.75, 5, 0.4, 8, 0.5, 0.615, 0.666, 3.4, 3.4, 3.7, 7.1, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 939935781), '2025-26', 21, 7.6, 3.1, 0.1, 1.9, 0.2, 0.2, 0.4, 18.7, 13.6, 17, 0.765, 34, 0.471, 23, 0.304, 0.465, 0.512, 5.0, 3.2, 5.1, 4.4, 103.2, 106.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 322395212), '2025-26', 36, 14.7, 3.1, 0.8, 4.0, 0.2, 0.2, 0.9, 8.6, 34.3, 16, 0.563, 63, 0.825, 0, 0.0, 0.825, 0.807, 7.1, 3.9, 7.9, 5.8, 130.0, 108.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 296885406), '2025-26', 4, 11.3, 3.0, 0.5, 1.3, 0.3, 0.8, 0.3, 12.4, 8.0, 2, 1.0, 4, 0.5, 7, 0.286, 0.455, 0.505, 4.3, 3.5, 4.8, 4.4, 109.0, 115.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 529377382), '2025-26', 2, 12.4, 3.0, 1.0, 4.0, 0.5, 0.0, 0.5, 12.5, 14.3, 1, 0.0, 6, 0.5, 0, 0.0, 0.5, 0.466, 7.0, 4.0, 8.0, 7.4, 115.5, 112.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 481177652), '2025-26', 5, 6.6, 3.0, 0.8, 0.6, 0.4, 0.0, 0.0, 17.7, 0.0, 2, 0.5, 7, 0.571, 6, 0.333, 0.538, 0.54, 3.6, 3.8, 4.4, 6.8, 123.9, 115.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 310039902), '2025-26', 3, 5.8, 3.0, 0.3, 1.0, 0.3, 0.0, 0.0, 17.7, 0.0, 1, 1.0, 4, 1.0, 3, 0.0, 0.571, 0.605, 4.0, 3.3, 4.3, 6.7, 128.9, 91.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 463935287), '2025-26', 7, 8.0, 3.0, 0.3, 0.7, 0.1, 0.0, 0.0, 12.1, 0.0, 0, 0.0, 6, 0.5, 10, 0.5, 0.656, 0.656, 3.7, 3.3, 4.0, 4.3, 140.7, 115.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 864854117), '2025-26', 4, 14.9, 3.0, 0.3, 2.0, 0.0, 0.3, 0.0, 11.5, 0.0, 0, 0.0, 5, 0.6, 11, 0.182, 0.375, 0.375, 5.0, 3.3, 5.3, 3.3, 94.1, 120.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 860196053), '2025-26', 6, 10.8, 3.0, 1.5, 1.2, 0.2, 0.2, 0.3, 15.6, 9.0, 4, 0.5, 12, 0.417, 8, 0.25, 0.4, 0.414, 4.2, 4.5, 5.7, 6.5, 96.7, 118.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 201817432), '2025-26', 8, 8.6, 3.0, 0.9, 1.9, 0.1, 0.4, 0.1, 15.8, 4.0, 0, 0.0, 5, 0.6, 19, 0.316, 0.5, 0.5, 4.9, 3.9, 5.8, 8.0, 127.9, 108.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 821186029), '2025-26', 44, 12.1, 3.0, 0.7, 1.8, 0.7, 0.0, 0.5, 12.7, 14.8, 14, 0.643, 70, 0.414, 68, 0.309, 0.438, 0.451, 4.8, 3.7, 5.5, 5.1, 96.7, 109.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 455204148), '2025-26', 25, 6.9, 3.0, 0.2, 2.1, 0.1, 0.4, 0.3, 15.6, 11.8, 11, 0.545, 52, 0.673, 0, 0.0, 0.673, 0.669, 5.1, 3.3, 5.4, 6.3, 136.8, 101.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 934049316), '2025-26', 37, 14.3, 3.0, 1.0, 3.8, 0.5, 0.3, 0.5, 8.1, 24.9, 60, 0.65, 56, 0.643, 1, 0.0, 0.632, 0.665, 6.8, 4.0, 7.8, 6.3, 139.2, 102.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 154222292), '2025-26', 3, 2.8, 3.0, 0.3, 0.7, 0.3, 0.0, 0.0, 30.5, 0.0, 0, 0.0, 3, 1.0, 3, 0.333, 0.75, 0.75, 3.7, 3.3, 4.0, 12.2, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 582728490), '2025-26', 48, 15.7, 3.0, 2.4, 1.1, 0.7, 0.1, 0.3, 9.8, 8.1, 6, 1.0, 56, 0.429, 102, 0.294, 0.437, 0.448, 4.1, 5.4, 6.5, 5.1, 113.8, 116.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 256283604), '2025-26', 18, 15.5, 2.9, 0.7, 2.6, 0.4, 0.2, 0.6, 10.6, 14.4, 5, 1.0, 14, 0.5, 45, 0.244, 0.398, 0.425, 5.4, 3.6, 6.1, 4.5, 100.6, 107.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 141542125), '2025-26', 22, 7.1, 2.9, 0.6, 1.4, 0.2, 0.0, 0.1, 14.6, 6.2, 13, 0.615, 18, 0.611, 27, 0.407, 0.611, 0.621, 4.2, 3.5, 4.9, 7.6, 134.8, 114.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 222261393), '2025-26', 32, 8.1, 2.9, 0.3, 1.2, 0.2, 0.3, 0.2, 13.1, 8.6, 6, 0.833, 19, 0.526, 55, 0.418, 0.601, 0.613, 4.1, 3.3, 4.4, 5.0, 124.9, 110.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 595867392), '2025-26', 11, 6.2, 2.9, 1.6, 1.2, 0.5, 0.1, 0.5, 20.3, 16.5, 6, 0.5, 20, 0.5, 5, 0.6, 0.58, 0.579, 4.1, 4.5, 5.7, 11.4, 123.8, 102.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 551938829), '2025-26', 34, 8.7, 2.9, 0.8, 1.6, 0.3, 0.1, 0.4, 16.7, 15.1, 26, 0.808, 35, 0.571, 49, 0.265, 0.47, 0.524, 4.5, 3.7, 5.3, 7.1, 112.3, 115.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 200817310), '2025-26', 16, 14.2, 2.9, 3.3, 1.8, 0.7, 0.0, 1.0, 14.2, 22.2, 2, 0.5, 26, 0.308, 30, 0.333, 0.411, 0.413, 4.7, 6.3, 8.0, 7.3, 101.8, 110.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 197960561), '2025-26', 5, 8.3, 2.8, 1.0, 0.8, 0.2, 0.2, 0.2, 10.0, 10.0, 0, 0.0, 6, 0.667, 3, 0.667, 0.778, 0.778, 3.6, 3.8, 4.6, 6.3, 148.2, 115.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 287374737), '2025-26', 12, 8.5, 2.8, 0.7, 1.6, 0.3, 0.0, 0.3, 15.2, 10.8, 0, 0.0, 7, 0.714, 26, 0.308, 0.515, 0.515, 4.4, 3.5, 5.1, 6.9, 105.6, 106.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 369735974), '2025-26', 35, 9.5, 2.8, 0.2, 1.3, 0.5, 0.2, 0.2, 12.6, 7.3, 11, 0.818, 39, 0.538, 49, 0.327, 0.511, 0.533, 4.1, 3.0, 4.3, 3.8, 114.0, 111.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 633898203), '2025-26', 40, 8.6, 2.8, 0.3, 1.8, 0.2, 0.1, 0.3, 16.4, 10.1, 14, 0.786, 55, 0.418, 60, 0.3, 0.435, 0.458, 4.6, 3.0, 4.8, 5.3, 96.5, 104.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 125396497), '2025-26', 25, 8.6, 2.8, 0.9, 1.2, 0.3, 0.0, 0.7, 20.7, 17.8, 12, 0.75, 58, 0.345, 25, 0.28, 0.367, 0.396, 4.0, 3.7, 4.9, 6.7, 82.9, 119.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 516502075), '2025-26', 42, 10.3, 2.8, 0.4, 2.6, 0.4, 0.5, 0.4, 12.6, 14.8, 48, 0.625, 58, 0.586, 34, 0.206, 0.484, 0.526, 5.4, 3.2, 5.8, 5.5, 112.1, 108.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 445666992), '2025-26', 11, 8.1, 2.7, 0.7, 1.1, 0.5, 0.3, 0.3, 16.4, 10.2, 12, 0.833, 15, 0.467, 11, 0.182, 0.385, 0.48, 3.8, 3.5, 4.5, 6.3, 111.8, 107.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 698626142), '2025-26', 19, 7.0, 2.7, 0.3, 0.7, 0.2, 0.1, 0.4, 16.8, 15.4, 18, 0.833, 19, 0.474, 19, 0.316, 0.474, 0.555, 3.4, 3.0, 3.7, 4.7, 111.0, 103.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 994975065), '2025-26', 17, 13.9, 2.7, 1.5, 5.1, 0.4, 0.5, 0.5, 10.3, 14.5, 8, 0.625, 38, 0.5, 9, 0.111, 0.436, 0.455, 7.8, 4.2, 9.3, 7.9, 124.8, 108.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 523750867), '2025-26', 41, 8.9, 2.7, 0.4, 2.1, 0.1, 0.1, 0.4, 14.7, 12.3, 12, 0.667, 39, 0.564, 68, 0.294, 0.486, 0.499, 4.9, 3.2, 5.3, 5.9, 107.3, 107.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 870260299), '2025-26', 11, 17.7, 2.6, 0.9, 4.0, 0.9, 1.2, 0.6, 9.3, 16.6, 4, 0.25, 34, 0.412, 1, 0.0, 0.4, 0.394, 6.6, 3.5, 7.5, 4.8, 99.7, 107.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 635285569), '2025-26', 31, 8.2, 2.6, 0.5, 1.5, 0.2, 0.1, 0.3, 13.3, 10.2, 7, 0.571, 48, 0.583, 22, 0.318, 0.55, 0.554, 4.1, 3.1, 4.6, 6.1, 122.6, 103.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 513778582), '2025-26', 36, 14.8, 2.6, 1.1, 1.5, 0.6, 0.1, 0.4, 7.5, 17.4, 9, 0.889, 27, 0.481, 44, 0.455, 0.606, 0.627, 4.1, 3.7, 5.2, 4.4, 124.3, 114.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 476205220), '2025-26', 7, 9.4, 2.4, 0.7, 0.9, 0.6, 0.0, 0.4, 11.3, 20.9, 9, 0.778, 4, 0.5, 7, 0.286, 0.455, 0.568, 3.3, 3.1, 4.0, 4.9, 114.2, 111.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 928661588), '2025-26', 29, 6.5, 2.4, 0.2, 1.3, 0.2, 0.2, 0.2, 19.6, 8.4, 11, 0.727, 34, 0.5, 42, 0.214, 0.401, 0.427, 3.7, 2.6, 3.8, 5.3, 98.8, 107.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 387165950), '2025-26', 30, 8.8, 2.4, 0.4, 0.9, 0.1, 0.1, 0.1, 11.0, 6.7, 15, 0.867, 30, 0.633, 25, 0.28, 0.536, 0.584, 3.3, 2.8, 3.6, 4.3, 122.1, 119.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 410877539), '2025-26', 15, 9.1, 2.3, 1.3, 1.0, 0.3, 0.0, 0.3, 13.9, 9.3, 4, 0.5, 24, 0.5, 15, 0.2, 0.423, 0.429, 3.3, 3.6, 4.6, 6.3, 102.0, 118.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 793242540), '2025-26', 42, 6.0, 2.3, 0.5, 1.0, 0.2, 0.1, 0.3, 17.3, 13.8, 6, 0.5, 36, 0.5, 51, 0.373, 0.534, 0.535, 3.3, 2.8, 3.8, 7.0, 107.1, 108.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 168766212), '2025-26', 18, 4.5, 2.3, 0.2, 0.6, 0.1, 0.1, 0.1, 17.0, 3.0, 1, 1.0, 9, 0.556, 23, 0.435, 0.625, 0.632, 2.8, 2.4, 3.0, 5.8, 135.7, 112.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 234176299), '2025-26', 12, 8.6, 2.3, 0.8, 2.0, 0.6, 0.3, 0.3, 17.3, 7.6, 9, 1.0, 20, 0.4, 16, 0.063, 0.264, 0.35, 4.3, 3.1, 5.1, 7.2, 95.9, 110.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 532956820), '2025-26', 10, 4.9, 2.3, 0.2, 0.5, 0.1, 0.1, 0.4, 17.2, 20.6, 3, 1.0, 3, 0.333, 12, 0.5, 0.667, 0.705, 2.8, 2.5, 3.0, 5.0, 118.1, 111.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 373294203), '2025-26', 19, 5.0, 2.3, 0.3, 1.3, 0.2, 0.0, 0.5, 20.7, 21.3, 11, 0.636, 21, 0.81, 12, 0.083, 0.561, 0.581, 3.6, 2.6, 3.9, 7.7, 104.2, 102.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 196101396), '2025-26', 30, 8.0, 2.3, 0.7, 1.7, 0.1, 0.3, 0.9, 19.2, 25.6, 18, 0.944, 44, 0.409, 34, 0.147, 0.327, 0.396, 4.0, 3.0, 4.7, 7.0, 80.9, 106.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 415127130), '2025-26', 9, 10.5, 2.3, 0.3, 2.0, 0.6, 0.8, 0.1, 12.7, 3.8, 4, 0.75, 10, 0.6, 15, 0.133, 0.36, 0.392, 4.3, 2.7, 4.7, 4.2, 94.5, 94.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 353972758), '2025-26', 21, 7.7, 2.2, 0.8, 1.7, 0.1, 0.0, 0.2, 17.0, 8.7, 13, 0.846, 19, 0.368, 33, 0.212, 0.337, 0.398, 3.9, 3.0, 4.7, 7.5, 95.8, 111.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 575375268), '2025-26', 10, 4.9, 2.2, 0.0, 1.1, 0.1, 0.0, 0.0, 16.4, 0.0, 3, 0.667, 6, 0.667, 11, 0.364, 0.588, 0.6, 3.3, 2.2, 3.3, 0.0, 127.5, 113.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 762325105), '2025-26', 29, 10.1, 2.2, 0.7, 1.9, 0.4, 0.2, 0.4, 9.8, 18.7, 10, 0.7, 17, 0.588, 35, 0.343, 0.538, 0.559, 4.1, 2.9, 4.8, 5.7, 116.2, 108.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 627999712), '2025-26', 14, 8.0, 2.2, 0.4, 1.8, 0.4, 0.1, 0.4, 14.0, 13.9, 0, 0.0, 16, 0.688, 15, 0.2, 0.5, 0.5, 4.0, 2.6, 4.4, 5.8, 108.6, 107.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 414083161), '2025-26', 14, 7.8, 2.1, 1.4, 1.6, 0.4, 0.0, 0.8, 15.5, 28.8, 5, 0.4, 12, 0.417, 15, 0.4, 0.519, 0.514, 3.8, 3.5, 5.1, 8.6, 103.9, 99.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 568212422), '2025-26', 8, 7.5, 2.1, 0.5, 2.1, 0.3, 0.0, 0.6, 19.6, 18.5, 3, 0.0, 11, 0.364, 11, 0.273, 0.386, 0.364, 4.3, 2.6, 4.8, 6.9, 79.7, 94.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 850464261), '2025-26', 7, 5.1, 2.1, 0.9, 0.4, 0.1, 0.0, 0.3, 19.7, 11.5, 1, 1.0, 9, 0.444, 6, 0.333, 0.467, 0.486, 2.6, 3.0, 3.4, 7.1, 104.7, 108.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 705964517), '2025-26', 2, 4.8, 2.0, 1.0, 2.5, 0.0, 0.0, 0.0, 13.1, 0.0, 0, 0.0, 3, 0.667, 0, 0.0, 0.667, 0.667, 4.5, 3.0, 5.5, 14.2, 191.4, 125.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 494762513), '2025-26', 2, 11.3, 2.0, 3.0, 1.0, 1.5, 0.0, 0.0, 7.1, 0.0, 4, 1.0, 2, 0.0, 0, 0.0, 0.0, 0.532, 3.0, 5.0, 6.0, 6.4, 164.6, 117.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 918225069), '2025-26', 3, 2.6, 2.0, 0.0, 0.3, 0.0, 0.0, 0.0, 26.8, 0.0, 0, 0.0, 1, 0.0, 4, 0.5, 0.6, 0.6, 2.3, 2.0, 2.3, 0.0, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 975188511), '2025-26', 2, 4.2, 2.0, 1.0, 0.5, 0.0, 0.5, 0.0, 9.7, 0.0, 0, 0.0, 2, 1.0, 0, 0.0, 1.0, 1.0, 2.5, 3.0, 3.5, 9.5, 208.1, 81.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 263663110), '2025-26', 2, 2.8, 2.0, 0.5, 0.5, 0.0, 0.0, 0.5, 30.1, 25.0, 0, 0.0, 2, 1.0, 1, 0.0, 0.667, 0.667, 2.5, 2.5, 3.0, 11.3, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 209953720), '2025-26', 1, 1.3, 2.0, 0.0, 0.0, 0.0, 0.0, 0.0, 63.5, 0.0, 0, 0.0, 1, 1.0, 1, 0.0, 0.5, 0.5, 2.0, 2.0, 2.0, 0.0, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 445834930), '2025-26', 5, 10.9, 2.0, 0.6, 1.2, 0.4, 0.4, 0.2, 6.7, 11.8, 2, 1.0, 6, 0.667, 1, 0.0, 0.571, 0.635, 3.2, 2.6, 3.8, 4.1, 131.5, 114.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 542695491), '2025-26', 25, 11.0, 2.0, 0.8, 1.8, 0.4, 0.2, 0.3, 9.5, 15.0, 16, 0.75, 28, 0.464, 17, 0.235, 0.422, 0.48, 3.8, 2.8, 4.6, 5.2, 117.5, 108.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 546246496), '2025-26', 2, 3.9, 2.0, 1.0, 0.5, 0.0, 0.0, 0.0, 21.0, 0.0, 2, 1.0, 1, 1.0, 2, 0.0, 0.333, 0.515, 2.5, 3.0, 3.5, 10.3, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 974496771), '2025-26', 23, 7.0, 2.0, 1.1, 0.7, 0.2, 0.2, 0.3, 14.5, 11.5, 9, 0.556, 23, 0.478, 23, 0.261, 0.435, 0.45, 2.7, 3.0, 3.8, 6.6, 109.9, 109.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 685915980), '2025-26', 1, 6.8, 2.0, 2.0, 4.0, 0.0, 0.0, 0.0, 18.2, 0.0, 0, 0.0, 1, 1.0, 2, 0.0, 0.333, 0.333, 6.0, 4.0, 8.0, 14.8, 105.4, 85.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 379139541), '2025-26', 21, 4.2, 2.0, 0.3, 0.8, 0.1, 0.0, 0.2, 22.3, 11.6, 8, 0.625, 14, 0.714, 24, 0.25, 0.5, 0.518, 2.9, 2.3, 3.1, 7.5, 105.5, 114.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 564144421), '2025-26', 23, 5.9, 2.0, 0.7, 0.7, 0.5, 0.0, 0.3, 15.9, 16.2, 5, 0.8, 19, 0.421, 22, 0.409, 0.524, 0.544, 2.7, 2.8, 3.4, 6.7, 109.6, 107.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 580354400), '2025-26', 26, 6.9, 2.0, 0.2, 1.5, 0.3, 0.2, 0.4, 11.4, 22.0, 8, 0.875, 26, 0.654, 9, 0.444, 0.657, 0.688, 3.5, 2.2, 3.7, 4.9, 120.0, 113.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 585774508), '2025-26', 1, 4.7, 2.0, 0.0, 0.0, 0.0, 1.0, 2.0, 35.5, 50.0, 0, 0.0, 2, 0.5, 0, 0.0, 0.5, 0.5, 2.0, 2.0, 2.0, 0.0, 42.8, 83.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 717174537), '2025-26', 36, 9.1, 2.0, 0.5, 2.9, 0.1, 0.6, 0.6, 10.1, 29.7, 25, 0.72, 44, 0.568, 3, 0.333, 0.564, 0.612, 4.9, 2.5, 5.4, 6.3, 119.7, 100.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 791394264), '2025-26', 32, 5.4, 2.0, 0.3, 0.9, 0.1, 0.1, 0.1, 16.5, 3.2, 10, 0.9, 9, 0.444, 51, 0.314, 0.467, 0.505, 2.9, 2.4, 3.3, 6.0, 114.5, 100.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 722892925), '2025-26', 28, 6.8, 1.9, 0.4, 0.8, 0.1, 0.0, 0.1, 12.9, 6.8, 1, 1.0, 7, 0.571, 47, 0.319, 0.491, 0.496, 2.7, 2.3, 3.1, 5.0, 104.9, 107.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 23257304), '2025-26', 14, 8.9, 1.9, 1.1, 2.9, 0.4, 0.0, 0.6, 8.9, 42.3, 12, 0.667, 12, 0.75, 0, 0.0, 0.75, 0.752, 4.7, 3.0, 5.9, 8.2, 128.3, 105.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 33238245), '2025-26', 27, 6.8, 1.9, 1.1, 0.4, 0.4, 0.0, 0.4, 14.9, 19.6, 5, 0.8, 25, 0.4, 24, 0.375, 0.48, 0.498, 2.3, 3.0, 3.4, 5.5, 104.6, 114.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 465477467), '2025-26', 7, 3.8, 1.9, 0.3, 1.3, 0.0, 0.3, 0.1, 17.5, 9.7, 3, 0.667, 6, 0.667, 3, 0.333, 0.611, 0.63, 3.1, 2.1, 3.4, 9.5, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 875849057), '2025-26', 23, 7.3, 1.9, 0.9, 1.0, 0.3, 0.1, 0.4, 14.9, 17.5, 6, 0.667, 4, 0.5, 43, 0.279, 0.426, 0.443, 3.0, 2.8, 3.8, 6.6, 94.3, 115.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 900730129), '2025-26', 12, 6.0, 1.8, 0.6, 0.8, 0.5, 0.0, 0.5, 20.2, 16.9, 2, 1.0, 13, 0.385, 16, 0.188, 0.328, 0.351, 2.6, 2.3, 3.2, 6.3, 77.6, 114.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 935340273), '2025-26', 4, 13.8, 1.8, 0.5, 3.5, 1.0, 0.5, 1.0, 12.8, 28.1, 6, 0.5, 5, 0.4, 5, 0.0, 0.2, 0.277, 5.3, 2.3, 5.8, 4.2, 54.8, 106.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 71575806), '2025-26', 4, 6.2, 1.8, 0.8, 1.0, 0.3, 0.0, 0.0, 8.5, 0.0, 0, 0.0, 3, 0.667, 2, 0.5, 0.7, 0.7, 2.8, 2.5, 3.5, 7.3, 167.7, 106.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 588850704), '2025-26', 4, 3.2, 1.8, 0.0, 0.8, 0.0, 0.0, 0.0, 13.1, 0.0, 0, 0.0, 3, 0.667, 1, 1.0, 0.875, 0.875, 2.5, 1.8, 2.5, 0.0, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 494801038), '2025-26', 13, 8.2, 1.7, 0.5, 2.1, 0.2, 0.7, 0.5, 10.6, 28.2, 12, 0.667, 15, 0.467, 0, 0.0, 0.467, 0.542, 3.8, 2.2, 4.2, 5.9, 107.0, 101.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 23149333), '2025-26', 5, 3.4, 1.6, 0.2, 0.4, 0.0, 0.2, 0.0, 14.8, 0.0, 0, 0.0, 6, 0.667, 0, 0.0, 0.667, 0.667, 2.0, 1.8, 2.2, 5.9, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 948825104), '2025-26', 28, 7.6, 1.6, 0.5, 1.7, 0.2, 0.1, 0.3, 10.8, 13.6, 6, 0.667, 29, 0.448, 15, 0.333, 0.466, 0.482, 3.3, 2.1, 3.8, 5.8, 106.7, 101.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 726440329), '2025-26', 6, 5.1, 1.5, 0.5, 0.8, 0.0, 0.0, 0.2, 21.4, 6.7, 0, 0.0, 5, 0.6, 9, 0.111, 0.321, 0.321, 2.3, 2.0, 2.8, 6.6, 79.0, 112.5) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 38550882), '2025-26', 8, 4.3, 1.5, 0.1, 0.0, 0.0, 0.0, 0.1, 20.3, 6.3, 0, 0.0, 2, 0.0, 13, 0.308, 0.4, 0.4, 1.5, 1.6, 1.6, 0.0, 81.4, 111.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 223002299), '2025-26', 24, 6.6, 1.5, 1.0, 0.8, 0.3, 0.1, 0.3, 15.8, 15.3, 10, 0.9, 18, 0.333, 26, 0.192, 0.307, 0.372, 2.3, 2.5, 3.3, 6.4, 95.9, 106.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 883201994), '2025-26', 5, 5.6, 1.4, 0.4, 0.4, 0.4, 0.4, 0.0, 8.9, 0.0, 0, 0.0, 2, 1.0, 4, 0.25, 0.583, 0.583, 1.8, 1.8, 2.2, 4.3, 139.7, 117.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 300969231), '2025-26', 9, 7.5, 1.4, 0.9, 1.1, 0.8, 0.0, 0.4, 12.2, 20.0, 0, 0.0, 7, 0.286, 9, 0.333, 0.406, 0.406, 2.6, 2.3, 3.4, 5.9, 92.1, 103.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 738646635), '2025-26', 22, 6.3, 1.4, 0.5, 1.7, 0.2, 0.2, 0.3, 11.1, 17.6, 5, 0.4, 28, 0.5, 0, 0.0, 0.5, 0.497, 3.0, 1.8, 3.5, 6.7, 108.9, 106.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 228352588), '2025-26', 15, 5.8, 1.3, 0.3, 1.2, 0.3, 0.1, 0.3, 12.8, 17.9, 8, 0.75, 17, 0.412, 1, 0.0, 0.389, 0.465, 2.5, 1.7, 2.9, 5.4, 106.3, 100.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 844672776), '2025-26', 27, 7.2, 1.3, 0.3, 1.2, 0.3, 0.1, 0.3, 12.1, 14.8, 4, 0.5, 30, 0.433, 16, 0.125, 0.348, 0.356, 2.5, 1.5, 2.7, 4.3, 83.9, 110.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 404152269), '2025-26', 17, 2.9, 1.3, 0.1, 0.6, 0.4, 0.2, 0.2, 20.2, 16.4, 11, 0.545, 14, 0.571, 1, 0.0, 0.533, 0.554, 1.9, 1.4, 2.0, 5.9, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 878669202), '2025-26', 5, 4.2, 1.2, 0.2, 1.8, 0.2, 0.0, 0.4, 17.8, 23.7, 2, 1.0, 4, 0.5, 2, 0.0, 0.333, 0.436, 3.0, 1.4, 3.2, 7.2, 89.0, 105.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 366016454), '2025-26', 15, 7.6, 1.1, 0.8, 2.4, 0.1, 0.1, 0.3, 9.5, 18.9, 10, 0.4, 11, 0.455, 6, 0.167, 0.382, 0.397, 3.5, 1.9, 4.3, 6.8, 110.9, 99.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 854016735), '2025-26', 9, 4.8, 1.1, 0.4, 1.4, 0.2, 0.0, 0.2, 23.2, 9.0, 4, 0.5, 17, 0.235, 3, 0.0, 0.2, 0.23, 2.6, 1.6, 3.0, 7.1, 73.4, 104.9) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 951331283), '2025-26', 22, 4.3, 1.1, 0.1, 0.9, 0.0, 0.4, 0.5, 15.3, 32.9, 10, 0.9, 15, 0.533, 5, 0.0, 0.4, 0.512, 2.0, 1.3, 2.2, 4.3, 87.9, 99.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 233275695), '2025-26', 3, 4.8, 1.0, 0.3, 1.0, 0.3, 0.0, 0.0, 8.8, 0.0, 0, 0.0, 1, 0.0, 2, 0.5, 0.5, 0.5, 2.0, 1.3, 2.3, 5.6, 136.4, 100.3) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 103528788), '2025-26', 6, 7.4, 1.0, 1.2, 0.5, 0.2, 0.0, 0.3, 9.5, 20.0, 0, 0.0, 0, 0.0, 8, 0.25, 0.375, 0.375, 1.5, 2.2, 2.7, 4.6, 93.7, 114.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 918572784), '2025-26', 7, 3.7, 1.0, 0.6, 0.1, 0.0, 0.1, 0.7, 17.9, 48.9, 2, 0.5, 5, 0.6, 0, 0.0, 0.6, 0.595, 1.1, 1.6, 1.7, 4.2, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 209953720), '2025-26', 3, 5.6, 1.0, 0.3, 0.7, 0.0, 0.0, 0.0, 7.3, 0.0, 2, 0.5, 1, 1.0, 1, 0.0, 0.5, 0.521, 1.7, 1.3, 2.0, 4.2, 146.3, 104.6) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 100263867), '2025-26', 5, 8.3, 1.0, 0.4, 1.2, 0.0, 0.0, 0.4, 9.2, 23.7, 2, 1.0, 3, 0.0, 3, 0.333, 0.25, 0.363, 2.2, 1.4, 2.6, 3.8, 77.7, 119.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 936022619), '2025-26', 9, 6.0, 1.0, 0.2, 1.6, 0.1, 0.2, 0.6, 9.7, 40.2, 1, 1.0, 7, 0.571, 0, 0.0, 0.571, 0.605, 2.6, 1.2, 2.8, 4.6, 100.9, 104.7) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 425998170), '2025-26', 6, 10.7, 0.8, 0.3, 1.5, 0.5, 0.2, 0.0, 11.1, 0.0, 2, 0.5, 4, 0.5, 12, 0.0, 0.125, 0.148, 2.3, 1.2, 2.7, 2.7, 57.6, 113.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 643291938), '2025-26', 4, 3.9, 0.8, 0.0, 1.8, 0.5, 0.0, 0.3, 14.8, 18.4, 1, 1.0, 4, 0.25, 0, 0.0, 0.25, 0.338, 2.5, 0.8, 2.5, 0.0, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 316492788), '2025-26', 12, 5.4, 0.8, 0.3, 0.6, 0.3, 0.1, 0.3, 6.4, 32.5, 2, 0.5, 6, 0.667, 0, 0.0, 0.667, 0.654, 1.3, 1.0, 1.6, 3.9, 106.2, 100.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 224338295), '2025-26', 19, 3.4, 0.7, 0.4, 0.6, 0.2, 0.0, 0.0, 10.2, 0.0, 6, 1.0, 5, 0.4, 8, 0.125, 0.269, 0.416, 1.3, 1.1, 1.7, 6.5, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 905647799), '2025-26', 17, 4.0, 0.6, 0.8, 0.3, 0.4, 0.0, 0.4, 8.6, 44.6, 2, 1.0, 2, 0.5, 5, 0.4, 0.571, 0.635, 0.9, 1.4, 1.6, 5.2, 105.1, 106.1) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 191959783), '2025-26', 13, 2.8, 0.3, 0.3, 0.3, 0.2, 0.1, 0.2, 13.0, 29.4, 2, 0.5, 2, 0.0, 5, 0.2, 0.214, 0.254, 0.6, 0.6, 0.9, 4.3, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 410322112), '2025-26', 8, 4.0, 0.1, 0.1, 0.4, 0.1, 0.0, 0.1, 9.4, 19.6, 4, 0.25, 0, 0.0, 4, 0.0, 0.0, 0.087, 0.5, 0.3, 0.6, 1.6, 26.6, 104.8) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 41996150), '2025-26', 1, 1.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 25.4, 0.0, 0, 0.0, 1, 0.0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 477718547), '2025-26', 1, 2.2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 914107269), '2025-26', 1, 4.9, 0.0, 4.0, 0.0, 1.0, 0.0, 0.0, 8.5, 0.0, 0, 0.0, 0, 0.0, 1, 0.0, 0.0, 0.0, 0.0, 4.0, 4.0, 0.0, 134.3, 93.2) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 709441821), '2025-26', 2, 3.0, 0.0, 0.0, 1.0, 0.0, 0.5, 0.0, 14.5, 0.0, 0, 0.0, 2, 0.0, 0, 0.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 914107269), '2025-26', 1, 3.5, 0.0, 0.0, 2.0, 0.0, 0.0, 1.0, 12.7, 100.0, 0, 0.0, 0, 0.0, 0, 0.0, 0.0, 0.0, 2.0, 0.0, 2.0, 0.0, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 487083535), '2025-26', 2, 6.6, 0.0, 1.0, 0.5, 0.5, 0.0, 0.5, 22.6, 14.3, 0, 0.0, 1, 0.0, 5, 0.0, 0.0, 0.0, 0.5, 1.0, 1.5, 0.0, 19.4, 100.4) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 428706229), '2025-26', 5, 1.5, 0.0, 0.0, 0.4, 0.0, 0.0, 0.0, 5.5, 0.0, 0, 0.0, 1, 0.0, 0, 0.0, 0.0, 0.0, 0.4, 0.0, 0.4, 0.0, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 841570747), '2025-26', 2, 3.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 21.1, 0.0, 0, 0.0, 1, 0.0, 2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 124473646), '2025-26', 4, 3.4, 0.0, 0.0, 0.8, 0.3, 0.5, 0.0, 3.2, 0.0, 0, 0.0, 0, 0.0, 1, 0.0, 0.0, 0.0, 0.8, 0.0, 0.8, 0.0, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;
INSERT INTO player_season_stats (player_id, season, games_played, avg_minutes, avg_points, avg_assists, avg_rebounds, avg_steals, avg_blocks, avg_turnovers, usage_pct, turnover_pct, fta, ft_pct, two_pa, two_p_pct, three_pa, three_p_pct, efg_pct, ts_pct, points_rebounds, points_assists, points_rebounds_assists, vi, ortg, drtg) 
VALUES ((SELECT id FROM players WHERE nba_id = 870260299), '2025-26', 2, 3.2, 0.0, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 0, 0.0, 0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.5, 0.0, 0.0, 0.0) 
ON CONFLICT (player_id, season) DO UPDATE SET 
  games_played = EXCLUDED.games_played, 
  avg_minutes = EXCLUDED.avg_minutes, 
  avg_points = EXCLUDED.avg_points, 
  avg_assists = EXCLUDED.avg_assists, 
  avg_rebounds = EXCLUDED.avg_rebounds, 
  avg_steals = EXCLUDED.avg_steals, 
  avg_blocks = EXCLUDED.avg_blocks, 
  avg_turnovers = EXCLUDED.avg_turnovers, 
  usage_pct = EXCLUDED.usage_pct, 
  turnover_pct = EXCLUDED.turnover_pct, 
  fta = EXCLUDED.fta, 
  ft_pct = EXCLUDED.ft_pct, 
  two_pa = EXCLUDED.two_pa, 
  two_p_pct = EXCLUDED.two_p_pct, 
  three_pa = EXCLUDED.three_pa, 
  three_p_pct = EXCLUDED.three_p_pct, 
  efg_pct = EXCLUDED.efg_pct, 
  ts_pct = EXCLUDED.ts_pct, 
  points_rebounds = EXCLUDED.points_rebounds, 
  points_assists = EXCLUDED.points_assists, 
  points_rebounds_assists = EXCLUDED.points_rebounds_assists, 
  vi = EXCLUDED.vi, 
  ortg = EXCLUDED.ortg, 
  drtg = EXCLUDED.drtg;

COMMIT;
