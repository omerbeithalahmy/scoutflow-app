import os
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from dotenv import load_dotenv

# טוען משתני סביבה מקובץ .env
load_dotenv()

DATABASE_URL = (
    f"postgresql://{os.getenv('POSTGRES_USER')}:{os.getenv('POSTGRES_PASSWORD')}"
    f"@{os.getenv('POSTGRES_HOST')}:{os.getenv('POSTGRES_PORT')}/"
    f"{os.getenv('POSTGRES_DB')}"
)

# יצירת ה-engine
engine = create_engine(DATABASE_URL)

# יצירת session factory
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
