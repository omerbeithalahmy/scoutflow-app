from pydantic import BaseModel
from typing import Optional, List  # ← חשוב עבור Python 3.9

class UserCreate(BaseModel):
    username: str
    email: str
    password: str

class UserOut(BaseModel):
    id: int
    username: str
    email: str

    model_config = {
        "from_attributes": True
    }

class TeamOut(BaseModel):
    id: int
    name: str
    abbreviation: Optional[str] = None  # ← כאן שינינו
    city: Optional[str] = None          # ← כאן שינינו

    model_config = {
        "from_attributes": True
    }

class PlayerOut(BaseModel):
    id: int
    full_name: str
    position: Optional[str] = None
    team_id: int
    is_active: bool

    model_config = {"from_attributes": True}
