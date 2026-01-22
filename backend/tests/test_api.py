"""
Basic API tests for ScoutFlow backend
"""
from fastapi.testclient import TestClient
from main import app
client = TestClient(app)
def test_health_endpoint():
    """Test the health check endpoint"""
    response = client.get("/health")
    assert response.status_code == 200
    assert response.json() == {"status": "ok"}
def test_root_redirect():
    """Test root redirects to docs"""
    response = client.get("/", follow_redirects=False)
    assert response.status_code in [307, 308, 301, 302]