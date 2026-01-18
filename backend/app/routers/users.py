from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from typing import List

from app import crud, schemas
from app.dependencies import get_db
from app.security import hash_password, verify_password  # ← Argon2 hashing

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

@router.post("/login")
def login(user: schemas.UserLogin, db: Session = Depends(get_db)):
    db_user = db.query(crud.User).filter(crud.User.email == user.username).first()

    if not db_user:
        raise HTTPException(status_code=400, detail="Invalid credentials")

    if not verify_password(user.password, db_user.password_hash):
        raise HTTPException(status_code=400, detail="Invalid credentials")

    # כאן הוספנו את ה-username המקורי (השם המלא מה-DB)
    return {
        "id": db_user.id, 
        "username": db_user.username, # זה השם המלא (למשל "Sherif Cooper")
        "email": db_user.email
    }


@router.post("/{user_id}/followed-players/{player_id}")
def follow_player_endpoint(
    user_id: int,
    player_id: int,
    db: Session = Depends(get_db)
):
    """
    Follow a player
    """
    user = crud.get_user(db, user_id)
    if not user:
        raise HTTPException(status_code=404, detail="User not found")
    
    # Check if player exists
    player = crud.get_player_with_stats(db, player_id)
    if not player:
        raise HTTPException(status_code=404, detail="Player not found")
    
    result = crud.follow_player(db, user_id, player_id)
    if result is None:
        raise HTTPException(status_code=400, detail="Already following this player")
    
    return {"detail": "Player followed successfully"}


@router.get("/{user_id}/followed-players/{player_id}/status")
def check_follow_status_endpoint(
    user_id: int,
    player_id: int,
    db: Session = Depends(get_db)
):
    """
    Check if user is following a specific player
    """
    user = crud.get_user(db, user_id)
    if not user:
        raise HTTPException(status_code=404, detail="User not found")
    
    is_following = crud.check_follow_status(db, user_id, player_id)
    return {"is_following": is_following}


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

