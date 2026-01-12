from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from typing import List

from app import crud, schemas
from app.dependencies import get_db
from app.security import hash_password  # ← Argon2 hashing

router = APIRouter(
    prefix="/users",
    tags=["users"]
)

@router.post("/", response_model=schemas.UserOut)
def create_user(
    user: schemas.UserCreate,
    db: Session = Depends(get_db)
):
    # hash לסיסמה לפני הוספה למסד הנתונים
    hashed_pw = hash_password(user.password)

    created_user = crud.create_user(
        db=db,
        username=user.username,
        email=user.email,
        password_hash=hashed_pw  # ← כאן השם שונה כדי להתאים ל-crud.py
    )
    return created_user

@router.get("/{user_id}/followed-players", response_model=List[schemas.PlayerDetailsOut])
def get_user_followed_players(user_id: int, db: Session = Depends(get_db)):
    players = crud.get_followed_players(db, user_id)
    if players is None:
        raise HTTPException(status_code=404, detail="User not found")
    return players


@router.delete("/{user_id}/followed-players/{player_id}")
def delete_followed_player(
    user_id: int,
    player_id: int,
    db: Session = Depends(get_db)
):
    user = crud.get_user(db, user_id)
    if not user:
        raise HTTPException(status_code=404, detail="User not found")

    result = crud.remove_followed_player(db, user_id, player_id)
    if not result:
        raise HTTPException(status_code=404, detail="Player not followed by user")

    return {"detail": "Player removed from followed list"}
