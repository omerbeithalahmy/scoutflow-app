from pydantic import BaseModel, Field
from typing import Optional, List

# ===== Users =====

class UserCreate(BaseModel):
    username: str
    email: str
    password: str


class UserOut(BaseModel):
    id: int
    username: str
    email: str

    model_config = {"from_attributes": True}


# ===== Teams =====

class TeamOut(BaseModel):
    id: int
    name: str
    abbreviation: Optional[str] = None
    city: Optional[str] = None

    model_config = {"from_attributes": True}


# ===== Players (basic) =====

class PlayerOut(BaseModel):
    id: int
    full_name: str
    position: Optional[str] = None
    team_id: int
    is_active: bool

    model_config = {"from_attributes": True}


# ===== Player Details =====

class PlayerSeasonStatsOut(BaseModel):
    season: str
    games_played: Optional[int] = None
    avg_minutes: Optional[float] = None
    avg_points: Optional[float] = None
    avg_assists: Optional[float] = None
    avg_rebounds: Optional[float] = None
    avg_steals: Optional[float] = None
    avg_blocks: Optional[float] = None
    avg_turnovers: Optional[float] = None

    model_config = {"from_attributes": True}


class PlayerDetailsOut(BaseModel):
    id: int
    full_name: str
    position: Optional[str] = None
    team_id: int
    is_active: bool
    season_stats: List[PlayerSeasonStatsOut] = Field(default_factory=list)

    model_config = {"from_attributes": True}
