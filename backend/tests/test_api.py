# ============================================================================
# Backend Service - API Tests
# Automated test suite for validating endpoint availability and health status
# ============================================================================

from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)

def test_health_endpoint():
    response = client.get("/health")
    assert response.status_code == 200
    assert response.json() == {"status": "ok"}

def test_docs_available():
    response = client.get("/docs")
    assert response.status_code == 200