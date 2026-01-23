"""
Basic API tests for ScoutFlow backend
"""
from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)


def test_health_endpoint():
    """Test the health check endpoint"""
    response = client.get("/health")
    assert response.status_code == 200
    assert response.json() == {"status": "ok"}


def test_docs_available():
    """Test the API docs endpoint is available"""
    response = client.get("/docs")
    assert response.status_code == 200