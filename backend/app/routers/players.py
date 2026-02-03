# ============================================================================
# Backend Service - Players Router
# Exposes endpoints for player metadata, statistics, and search suggestions
# ============================================================================

from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session
from typing import Annotated, List
from app.dependencies import get_db
from app import crud, schemas, models

router = APIRouter(
    prefix="/players",
    tags=["players"]
)

@router.get("/suggestions")
def get_player_suggestions(
    q: Annotated[str, Query(min_length=2)] = None,
    db: Session = Depends(get_db)
):
    if not q:
        return []
    
    players = db.query(models.Player).filter(models.Player.full_name.ilike(f"%{q}%")).limit(5).all()
    
    results = []
    for p in players:
        stats = db.query(models.PlayerSeasonStats).filter(
            models.PlayerSeasonStats.player_id == p.id
        ).order_by(models.PlayerSeasonStats.season.desc()).first()
        
        avg_p = stats.avg_points if stats else 0.0
        
        results.append({
            "id": p.id,
            "full_name": p.full_name,
            "team_abbr": p.team.abbreviation if p.team else "NBA",
            "ppg": avg_p
        })
    return results

@router.get("/by-name", response_model=schemas.PlayerDetailsOut)
def get_player_by_name(full_name: str, db: Session = Depends(get_db)):
    player = crud.get_player_by_full_name(db, full_name)
    if not player:
        raise HTTPException(status_code=404, detail="Player not found")
    return player

@router.get("/team/{team_id}", response_model=List[schemas.PlayerOut])
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