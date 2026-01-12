from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.dependencies import get_db
from app import crud, schemas

router = APIRouter(
    prefix="/players",
    tags=["players"]
)

@router.get("/team/{team_id}", response_model=list[schemas.PlayerOut])
def get_players_for_team(team_id: int, db: Session = Depends(get_db)):
    players = crud.get_players_by_team(db, team_id)
    if not players:
        raise HTTPException(status_code=404, detail="No players found for this team")
    return players

@router.get("/{player_id}", response_model=schemas.PlayerDetailsOut)
def get_player_details(player_id: int, db: Session = Depends(get_db)):
    player = crud.get_player_with_stats(db, player_id)

    if not player:
        raise HTTPException(status_code=404, detail="Player not found")

    return player

