# ============================================================================
# Backend Service - Dependency Injection
# Manages resource lifecycle and database session provisioning
# ============================================================================

from app.db.session import SessionLocal

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
