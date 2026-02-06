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

# Root route for ALB health check
@app.get("/")
def home():
    return {"status": "ok", "message": "ScoutFlow API"}

@app.get("/health")
def health():
    return {"status": "ok"}

# Create a sub-app for the /api prefix to handle cloud routing correctly
api_app = FastAPI(title="ScoutFlow API")

api_app.include_router(users.router)
api_app.include_router(teams.router)
api_app.include_router(players.router)

app.mount("/api", api_app)
