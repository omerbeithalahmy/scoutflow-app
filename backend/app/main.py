# ============================================================================
# Backend Service - Entry Point
# Configures the FastAPI application, middleware, and API router integration
# ============================================================================

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from app.routers import users, teams, players

app = FastAPI(title="ScoutFlow Backend")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(users.router)
app.include_router(teams.router)
app.include_router(players.router)

@app.get("/health")
def health():
    return {"status": "ok"}
