from sqlalchemy.orm import Session
from .models import User
from .models import Team
from .models import Player
from .models import PlayerSeasonStats

def create_user(db: Session, username: str, email: str, password_hash: str):
    """
    יוצרת משתמש חדש ומוסיפה למסד הנתונים
    """
    db_user = User(
        username=username,
        email=email,
        password_hash=password_hash  # שם השדה תואם למודל ולטבלה
    )
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    return db_user

def get_user(db: Session, user_id: int):
    return db.query(User).filter(User.id == user_id).first()


from .models import Team

def get_teams(db: Session, limit: int = 30):
    """
    מחזיר רשימת קבוצות, מוגבל ל-30 ברירת מחדל
    """
    return db.query(Team).limit(limit).all()

def get_players_by_team(db: Session, team_id: int):
    return db.query(Player).filter(Player.team_id == team_id).all()

def get_player_with_stats(db: Session, player_id: int):
    player = (
        db.query(Player)
        .filter(Player.id == player_id)
        .first()
    )

    if not player:
        return None

    stats = (
        db.query(PlayerSeasonStats)
        .filter(PlayerSeasonStats.player_id == player_id)
        .order_by(PlayerSeasonStats.season.desc())
        .all()
    )

    # גם אם אין סטטיסטיקות – מחזירים שחקן
    player.season_stats = stats or []
    return player


