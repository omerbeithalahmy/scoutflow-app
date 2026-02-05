# ScoutFlow Application Repository

> **Core application services and deployment logic for the ScoutFlow NBA analytics platform**

Full-stack microservices architecture using FastAPI, Python, React, and Helm for cloud-native deployment.

---

## 📋 Overview

This repository manages ScoutFlow's application source code and deployment manifests across three core services:

- **Frontend** - Responsive dashboard for visualization and team management
- **Backend API** - High-performance business logic and user session management
- **Ingest Service** - Automated Python engine for fetching real-time NBA data

**Key Technologies:**
- ✅ Python & FastAPI (Backend Logic)
- ✅ React/Vanilla JS (Frontend UI)
- ✅ PostgreSQL (Persistent Storage)
- ✅ Docker (Containerization)
- ✅ Helm & GitHub Actions (Delivery)

---

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────────┐
│  Client Side (Browser)                              │
│  └─ Frontend Dashboard (Nginx/JS)                   │
└─────────────────────────────────────────────────────┘
                        │
                        ↓ (HTTP/REST)
┌─────────────────────────────────────────────────────┐
│  Kubernetes Cluster (Namespace: scoutflow)          │
│                                                     │
│  Backend API ──→ Queries ──→ PostgreSQL DB          │
│       ↑                           ↑                 │
│       └── Authenticates           │ (Writes Data)   │
│                                   │                 │
│  Ingest Service ──→ Fetches ──→ NBA External API    │
└─────────────────────────────────────────────────────┘
```

**Data Flow:**
1. **Ingest Service** runs strictly on schedules to fetch external data
2. **PostgreSQL** acts as the single source of truth for all structured data
3. **Backend API** exposes data via secure endpoints to the frontend
4. **All secrets are injected via AWS Secrets Manager & External Secrets** ✅

---

## 📁 Repository Structure

```
scoutflow-app/
├── backend/                      # FastAPI service & business logic
├── frontend/                     # Web interface (JS/HTML/CSS)
├── ingest/                       # Data scraping & ingestion engine
├── db/                           # Database initialization & schemas
└── helm/
    └── scoutflow/                # Unified Helm Chart for deployment
        ├── templates/            # K8s Manifests (Deploy, Svc, Ing)
        └── values.yaml           # Default configuration
```

---

## 🚀 Quick Start

### Prerequisites

1. **Docker & Docker Compose** installed
2. **Python 3.9+** (for local debugging)
3. **Git** configured
4. **Make** (optional, for convenience commands)

### Launch Local Stack

```bash
# 1. Clone and enter repository
git clone https://github.com/omerbh7/scoutflow-app.git
cd scoutflow-app

# 2. Clear old volumes and build
docker-compose down -v
docker-compose up --build
```

### Access Points

- **Frontend Dashboard**: [http://localhost:3000](http://localhost:3000)
- **Backend API & Docs**: [http://localhost:8000](http://localhost:8000) | [http://localhost:8000/docs](http://localhost:8000/docs)

---

## 🔐 Security & Secrets

### How The App Handles Secrets

**Configuration (in Helm):**
```yaml
apiVersion: external-secrets.io/v1beta1
kind: ExternalSecret
metadata:
  name: scoutflow-secrets
spec:
  backendType: secretsManager
  data:
    - secretKey: DB_PASSWORD
      remoteRef:
        key: scoutflow/prod/database
```

**What Happens:**
1. Infrastructure creates secrets in AWS Secrets Manager
2. External Secrets Operator fetches them inside the cluster
3. Secrets are mounted as Environment Variables in Pods
4. Code never contains hardcoded credentials

**Security Benefits:**
- ✅ Seamless integration with `scoutflow-infra`
- ✅ Identity-based database access
- ✅ Zero-trust architecture compliance

---

## 🌍 Service Configuration

### Backend (FastAPI)
- **Purpose**: Core API gateway and logic handler
- **Port**: 8000
- **Database**: Direct connection via SQLAlchemy
- **Scaling**: Stateless, horizontal scaling supported
- **Health Check**: `/health` endpoint

### Ingest Worker
- **Purpose**: Background data processing
- **Trigger**: CronJob / Scheduled Loop
- **Concurrency**: Single active worker (to avoid API rate limits)
- **Recovery**: Auto-restart on failure
- **State**: Stateless (Dependant on DB)

### Frontend
- **Purpose**: User Interface
- **Server**: Nginx (Alpine)
- **Port**: 3000 (Internal), 80 (Exposed)
- **Caching**: Static assets cached at ingress level

---

## 🔄 Development Workflow

### Local Development
1. Modify Python code in `backend/` or `ingest/`
   ↓
2. Docker Compose hot-reloads changes
   ↓
3. Run `pytest` to verify logic integrity
   ↓
4. Validate API response via Swagger UI

### CI/CD Pipeline (GitHub Actions)
1. Push code to main branch
   ↓
2. CI triggers: Linting (Flake8) & Testing (Pytest)
   ↓
3. Docker Build & Push to ECR (tagged with SHA)
   ↓
4. Helm Chart packaged and version bumped

---

## 🛠️ Common Operations

### Run Tests Manually
```bash
# Backend Unit Tests
docker-compose exec backend pytest

# Database Schema Validation
docker-compose exec db psql -U user -d scoutflow -c "\dt"
```

### Helm Deployment (Manual)
```bash
# Lint the chart
helm lint ./helm/scoutflow

# Dry-run install
helm install scoutflow ./helm/scoutflow --dry-run --debug

# Actual Install
helm upgrade --install scoutflow ./helm/scoutflow -n production
```

---

## 📊 Resource Requirements (Requests/Limits)

| Service | CPU Request | Memory Request | CPU Limit | Memory Limit |
|---------|-------------|----------------|-----------|--------------|
| **Backend** | 250m | 256Mi | 500m | 512Mi |
| **Frontend** | 100m | 128Mi | 200m | 256Mi |
| **Ingest** | 500m | 512Mi | 1000m | 1Gi |

---

## 🔗 Integration with Other Repositories

### [scoutflow-infra](https://github.com/omerbh7/scoutflow-infra)
**Application Consumes:**
- EKS Compute Resources
- RDS/PostgreSQL Connectivity
- Redis Caching Layer

### [scoutflow-gitops](https://github.com/omerbh7/scoutflow-gitops)
**Application Consumes:**
- Deployment Synchronization
- ApplicationSets for Multi-env promotion
- Sealed Secrets management

---

## 🚨 Important Notes

### Data Integrity
- ⚠️ **Ingestion Rate Limits**: The Ingest service is tuned to respect NBA API rate limits. Do not scale replicas > 1.

### Database Migrations
- 🔒 **Schema Changes**: Migrations are handled via init-containers. Ensure backups are taken before major schema updates.

### Production Build
- 💰 **Optimization**: Frontend Dockerfile uses multi-stage builds to keep image size small. Backend uses slim python images for security and speed.

---

## 📝 Making Changes

### Adding a New Endpoint
1. Create route in `backend/app/routers/`
2. Define Pydantic model in `backend/app/schemas/`
3. Add test case in `backend/tests/`
4. Verify in Swagger (`/docs`)

### Modifying Helm Chart
- ⚠️ **CAUTION**: Bump `Chart.yaml` version on every change.
- Verify `values.yaml` defaults work for local dev.
- Test rendering with `helm template` before pushing.

---

## ✅ Production Checklist

Before promoting to production:
- [x] CI Pipelines passed (Tests & Lint)
- [x] Docker images scanned for vulnerabilities
- [x] Helm values configured for HA (Replicas > 1)
- [x] Database migrations tested in Staging
- [x] External Secrets mapped correctly to AWS
- [x] Liveness/Readiness probes are active
- [x] Ingress annotations set for SSL/TLS

---

## 📚 Additional Resources
- [FastAPI Documentation](https://fastapi.tiangolo.com/)
- [React Documentation](https://reactjs.org/)
- [Helm Chart Best Practices](https://helm.sh/docs/chart_best_practices/)
- [PostgreSQL Tutorial](https://www.postgresql.org/docs/current/tutorial-sql.html)

---

## 🤝 Contributing
1. Create feature branch
2. Ensure `flake8` and `eslint` pass
3. Test locally with `docker-compose`
4. Provide the test coverage report in the PR description
5. Merge after code review

---
