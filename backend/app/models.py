from sqlalchemy import Column, Integer, String, ForeignKey, TIMESTAMP
from sqlalchemy.orm import relationship
from sqlalchemy.sql import func
from .db.base import Base  # יחסית נכון למבנה הקבצים שלך

class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True)
    username = Column(String, unique=True, index=True, nullable=False)
    email = Column(String, unique=True, index=True, nullable=False)
    password_hash = Column(String, nullable=False)  # שם תואם לטבלה
    created_at = Column(TIMESTAMP, server_default=func.now())

    followed_players = relationship("UserFollowedPlayer", back_populates="user")


class UserFollowedPlayer(Base):
    __tablename__ = "user_followed_players"

    user_id = Column(Integer, ForeignKey("users.id"), primary_key=True)
    player_id = Column(Integer, primary_key=True)
    followed_at = Column(TIMESTAMP, server_default=func.now())

    user = relationship("User", back_populates="followed_players")



class Team(Base):
    __tablename__ = "teams"

    id = Column(Integer, primary_key=True, index=True)
    nba_id = Column(Integer, unique=True, nullable=False)
    name = Column(String, nullable=False)
    abbreviation = Column(String, nullable=True)
    city = Column(String, nullable=True)
