from fastapi import FastAPI
from app.routers import users, teams

app = FastAPI(title="ScoutFlow Backend")

app.include_router(users.router)
app.include_router(teams.router)

@app.get("/health")
def health():
    return {"status": "ok"}
