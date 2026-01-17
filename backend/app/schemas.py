from pydantic import BaseModel, Field, EmailStr, field_validator
from typing import Optional, List
import re

# 1. Users
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

# 2. Teams
class TeamOut(BaseModel):
    id: int
    name: str
    abbreviation: Optional[str] = None
    city: Optional[str] = None
    model_config = {"from_attributes": True}

# 3. Stats (חייב להופיע לפני PlayerOut!)
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
    model_config = {"from_attributes": True}

# 4. Players
class PlayerOut(BaseModel):
    id: int
    full_name: str
    position: Optional[str] = None
    team_id: Optional[int] = True
    is_active: bool
    # עכשיו פייתון כבר מכיר את PlayerSeasonStatsOut
    latest_stats: Optional[PlayerSeasonStatsOut] = None 

    model_config = {"from_attributes": True}

# 5. Details (עבור עמוד שחקן ספציפי אם תרצה היסטוריה מלאה)
class PlayerDetailsOut(BaseModel):
    id: int
    full_name: str
    team_id: int
    team_name: Optional[str] = None # הוספנו כדי שנדע לאן לחזור
    team_abbreviation: Optional[str] = None # הוספנו עבור הצבעים
    season_stats: List[PlayerSeasonStatsOut] = Field(default_factory=list)
    model_config = {"from_attributes": True}