# ============================================================================
# Backend Service - Data Transfer Objects
# Pydantic schemas for request validation and response serialization
# ============================================================================

from pydantic import BaseModel, Field, EmailStr, field_validator
from typing import Optional, List
import re

class UserCreate(BaseModel):
    username: str = Field(..., min_length=2, description="Full Name")
    email: EmailStr
    password: str = Field(..., min_length=8)

    @field_validator('password')
    @classmethod
    def password_complexity(cls, v: str) -> str:
        if not re.search(r'[A-Z]', v):
            raise ValueError('Password must contain at least one uppercase letter')
        if not re.search(r'[0-9]', v):
            raise ValueError('Password must contain at least one digit')
        if not re.search(r'[!@#$%^&*(),.?":{}|<>]', v):
            raise ValueError('Password must contain at least one special character')
        return v

    @field_validator('username')
    @classmethod
    def name_must_be_full(cls, v: str) -> str:
        if len(v.strip().split()) < 2:
            raise ValueError('Please enter both first and last name')
        return v

class UserLogin(BaseModel):
    username: str
    password: str

class UserOut(BaseModel):
    id: int
    username: str
    email: str
    model_config = {"from_attributes": True}

class TeamOut(BaseModel):
    id: int
    name: str
    abbreviation: Optional[str] = None
    city: Optional[str] = None
    model_config = {"from_attributes": True}

class PlayerSeasonStatsOut(BaseModel):
    season: str
    games_played: Optional[int] = 0
    avg_minutes: Optional[float] = 0.0
    avg_points: Optional[float] = 0.0
    avg_assists: Optional[float] = 0.0
    avg_rebounds: Optional[float] = 0.0
    avg_steals: Optional[float] = 0.0
    avg_blocks: Optional[float] = 0.0
    avg_turnovers: Optional[float] = 0.0
    
    # Advanced stats
    usage_pct: Optional[float] = 0.0
    turnover_pct: Optional[float] = 0.0
    fta: Optional[int] = 0
    ft_pct: Optional[float] = 0.0
    two_pa: Optional[int] = 0
    two_p_pct: Optional[float] = 0.0
    three_pa: Optional[int] = 0
    three_p_pct: Optional[float] = 0.0
    efg_pct: Optional[float] = 0.0
    ts_pct: Optional[float] = 0.0
    points_rebounds: Optional[float] = 0.0
    points_assists: Optional[float] = 0.0
    points_rebounds_assists: Optional[float] = 0.0
    vi: Optional[float] = 0.0
    ortg: Optional[float] = 0.0
    drtg: Optional[float] = 0.0
    model_config = {"from_attributes": True}

class PlayerOut(BaseModel):
    id: int
    full_name: str
    position: Optional[str] = None
    age: Optional[float] = None
    team_id: Optional[int] = None
    is_active: bool
    latest_stats: Optional[PlayerSeasonStatsOut] = None 

    model_config = {"from_attributes": True}

class PlayerDetailsOut(BaseModel):
    id: int
    full_name: str
    position: Optional[str] = None
    age: Optional[float] = None
    team_id: int
    team_name: Optional[str] = None
    team_abbreviation: Optional[str] = None
    season_stats: List[PlayerSeasonStatsOut] = Field(default_factory=list)
    latest_stats: Optional[PlayerSeasonStatsOut] = None
    model_config = {"from_attributes": True}