from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from app.routers import users, teams, players

app = FastAPI(title="ScoutFlow Backend")

# 🔹 Middleware ל-CORS
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # אפשר להחליף לדומיין של הפרונטאנד
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# 🔹 רוטרים
app.include_router(users.router)
app.include_router(teams.router)
app.include_router(players.router)

# 🔹 Route לבדיקה
@app.get("/health")
def health():
    return {"status": "ok"}
