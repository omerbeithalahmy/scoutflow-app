from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session

from app import crud, schemas
from app.dependencies import get_db

router = APIRouter(
    prefix="/teams",
    tags=["teams"]
)

@router.get("/", response_model=list[schemas.TeamOut])
def read_teams(db: Session = Depends(get_db), limit: int = 30):
    """
    מחזיר את 30 הקבוצות הראשונות
    """
    teams = crud.get_teams(db, limit=limit)
    return teams
