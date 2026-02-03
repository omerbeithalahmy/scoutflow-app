# ============================================================================
# Backend Service - Teams Router
# Orchestrates access to NBA franchise data and roster information
# ============================================================================

from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app import crud, schemas, models
from app.dependencies import get_db

router = APIRouter(
    prefix="/teams",
    tags=["teams"]
)

@router.get("/", response_model=list[schemas.TeamOut])
def read_teams(db: Session = Depends(get_db), limit: int = 30):
    return crud.get_teams(db, limit=limit)

@router.get("/{team_id}", response_model=schemas.TeamOut)
def read_team(team_id: int, db: Session = Depends(get_db)):
    team = db.query(models.Team).filter(models.Team.id == team_id).first()
    
    if not team:
        raise HTTPException(status_code=404, detail="Team not found")
    
    return team

@router.get("/{team_id}/players", response_model=list[schemas.PlayerOut])
def read_team_players(team_id: int, db: Session = Depends(get_db)):
    players = crud.get_players_by_team(db, team_id=team_id)
    return players