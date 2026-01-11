from sqlalchemy.orm import Session
from .models import User

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
