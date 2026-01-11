from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from .. import crud, schemas
from ..dependencies import get_db  # פונקציה שמחזירה Session

router = APIRouter()

@router.post("/users/", response_model=schemas.UserOut)
def create_user(user: schemas.UserCreate, db: Session = Depends(get_db)):
    hashed_password = hash_password(user.password)  # פונקציה שמחזירה hash
    db_user = crud.create_user(db, user.username, user.email, hashed_password)
    return db_user

# דוגמה לפונקציית hash בסיסית (אפשר להחליף ל-bcrypt)
def hash_password(password: str) -> str:
    import hashlib
    return hashlib.sha256(password.encode()).hexdigest()
