from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session

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
