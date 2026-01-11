from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session

from app import crud, schemas
from app.dependencies import get_db

router = APIRouter(
    prefix="/users",
    tags=["users"]
)

@router.post("/", response_model=schemas.UserOut)
def create_user(
    user: schemas.UserCreate,
    db: Session = Depends(get_db)
):
    created_user = crud.create_user(
        db=db,
        username=user.username,
        email=user.email,
        hashed_password=user.password  # כרגע בלי hashing
    )
    return created_user
