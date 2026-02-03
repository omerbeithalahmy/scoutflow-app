# ============================================================================
# Backend Service - Persistence Layer
# Core CRUD operations for data retrieval and state modification
# ============================================================================

from sqlalchemy.orm import Session
from .models import User, Team, Player, PlayerSeasonStats, UserFollowedPlayer

def create_user(db: Session, username: str, email: str, password_hash: str):
    db_user = User(
        username=username,
        email=email,
        password_hash=password_hash
    )
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    return db_user

def get_user(db: Session, user_id: int):
    return db.query(User).filter(User.id == user_id).first()

def get_teams(db: Session, limit: int = 30):
    return db.query(Team).limit(limit).all()

def search_players_suggestions(db: Session, query: str, limit: int = 5):
    players = (
        db.query(Player)
        .filter(Player.full_name.ilike(f"%{query}%"))
        .limit(limit)
        .all()
    )
    
    for player in players:
        stats = (
            db.query(PlayerSeasonStats)
            .filter(PlayerSeasonStats.player_id == player.id)
            .order_by(PlayerSeasonStats.season.desc())
            .first()
        )
        player.latest_stats = stats
        
        if not hasattr(player, 'team') or player.team is None:
            player.team_abbreviation = "NBA"
        else:
            player.team_abbreviation = player.team.abbreviation

    return players

def get_players_by_team(db: Session, team_id: int):
    players = db.query(Player).filter(Player.team_id == team_id).all()
    
    for player in players:
        stats = (
            db.query(PlayerSeasonStats)
            .filter(PlayerSeasonStats.player_id == player.id)
            .order_by(PlayerSeasonStats.season.desc())
            .first()
        )
        player.latest_stats = stats
    
    return players

def get_player_with_stats(db: Session, player_id: int):
    player = (
        db.query(Player)
        .filter(Player.id == player_id)
        .first()
    )

    if not player:
        return None
    
    player.team_name = player.team.name
    player.team_abbreviation = player.team.abbreviation

    stats = (
        db.query(PlayerSeasonStats)
        .filter(PlayerSeasonStats.player_id == player_id)
        .order_by(PlayerSeasonStats.season.desc())
        .all()
    )

    player.season_stats = stats or []
    return player

def get_followed_players(db: Session, user_id: int):
    user = db.query(User).filter(User.id == user_id).first()
    if not user:
        return None

    followed = (
        db.query(UserFollowedPlayer)
        .filter(UserFollowedPlayer.user_id == user_id)
        .all()
    )

    players_list = []
    for fp in followed:
        player = fp.player
        latest_stats = (
            db.query(PlayerSeasonStats)
            .filter(PlayerSeasonStats.player_id == player.id)
            .order_by(PlayerSeasonStats.season.desc())
            .first()
        )
        player.latest_stats = latest_stats
        if player.team:
            player.team_name = player.team.name
            player.team_abbreviation = player.team.abbreviation
        
        players_list.append(player)

    return players_list

def follow_player(db: Session, user_id: int, player_id: int):
    existing = (
        db.query(UserFollowedPlayer)
        .filter(UserFollowedPlayer.user_id == user_id,
                UserFollowedPlayer.player_id == player_id)
        .first()
    )
    if existing:
        return None
    
    new_follow = UserFollowedPlayer(
        user_id=user_id,
        player_id=player_id
    )
    db.add(new_follow)
    db.commit()
    db.refresh(new_follow)
    return new_follow

def check_follow_status(db: Session, user_id: int, player_id: int):
    followed = (
        db.query(UserFollowedPlayer)
        .filter(UserFollowedPlayer.user_id == user_id,
                UserFollowedPlayer.player_id == player_id)
        .first()
    )
    return followed is not None

def remove_followed_player(db: Session, user_id: int, player_id: int):
    followed = (
        db.query(UserFollowedPlayer)
        .filter(UserFollowedPlayer.user_id == user_id,
                UserFollowedPlayer.player_id == player_id)
        .first()
    )
    if not followed:
        return None

    db.delete(followed)
    db.commit()
    return True

def get_player_by_full_name(db: Session, full_name: str):
    player = (
        db.query(Player)
        .filter(Player.full_name == full_name)
        .first()
    )
    if not player:
        return None

    stats = (
        db.query(PlayerSeasonStats)
        .filter(PlayerSeasonStats.player_id == player.id)
        .order_by(PlayerSeasonStats.season.desc())
        .all()
    )
    player.season_stats = stats or []
    return player
