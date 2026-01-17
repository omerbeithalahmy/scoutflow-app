from pydantic import BaseModel, Field
from typing import Optional, List

# 1. Users
class UserCreate(BaseModel):
    username: str
    email: str
    password: str

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
    avg_points: Optional[float] = 0.0
    avg_assists: Optional[float] = 0.0
    avg_rebounds: Optional[float] = 0.0
    # אם תרצה להוסיף עוד נתונים מה-DB בעתיד, תוסיף אותם כאן
    model_config = {"from_attributes": True}

# 4. Players
class PlayerOut(BaseModel):
    id: int
    full_name: str
    position: Optional[str] = None
    team_id: int
    is_active: bool
    # עכשיו פייתון כבר מכיר את PlayerSeasonStatsOut
    latest_stats: Optional[PlayerSeasonStatsOut] = None 

    model_config = {"from_attributes": True}

# 5. Details (עבור עמוד שחקן ספציפי אם תרצה היסטוריה מלאה)
class PlayerDetailsOut(BaseModel):
    id: int
    full_name: str
    position: Optional[str] = None
    team_id: int
    is_active: bool
    season_stats: List[PlayerSeasonStatsOut] = Field(default_factory=list)
    model_config = {"from_attributes": True}