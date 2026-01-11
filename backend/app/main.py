from fastapi import FastAPI
from .routers import users

app = FastAPI(title="ScoutFlow Backend")

# רישום ה-routers
app.include_router(users.router)

@app.get("/health")
def health():
    return {"status": "ok"}
