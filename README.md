# ScoutFlow Application Repository

> **Application source code and deployment manifests for the ScoutFlow NBA analytics platform**

Production-grade microservices application with FastAPI backend, Nginx frontend, PostgreSQL database, and automated CI/CD pipelines for AWS EKS deployment.

---

## 📋 Overview

This repository contains the complete application stack for ScoutFlow, including microservices source code, Docker configurations, Helm charts for Kubernetes deployment, and CI/CD pipelines for automated building and GitOps synchronization.

**Core Components:**
- **Backend** - FastAPI REST API server providing NBA statistics endpoints
- **Frontend** - Nginx-served static web application with responsive UI
- **Database** - PostgreSQL 16 with professional NBA season data
- **Helm Chart** - Production-ready Kubernetes deployment manifests
- **CI/CD Pipelines** - Automated testing, building, and GitOps updates

**Key Technologies:**
- ✅ FastAPI (Python 3.11) - High-performance async web framework
- ✅ Nginx - Static file serving and reverse proxy
- ✅ PostgreSQL 16 - Relational database
- ✅ Docker - Containerization
- ✅ Helm 3 - Kubernetes package manager
- ✅ GitHub Actions - CI/CD automation
- ✅ AWS ECR - Container registry
- ✅ External Secrets Operator - Kubernetes secrets management

---

## 🏗️ Architecture

### Application Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│  User Browser                                                   │
└────────────────────────┬────────────────────────────────────────┘
                         │ HTTP
                         ↓
┌─────────────────────────────────────────────────────────────────┐
│  Frontend (Nginx) - Port 80                                     │
│  • Serves static HTML/CSS/JS                                    │
│  • Proxies /api/* to backend                                    │
└────────────────────────┬────────────────────────────────────────┘
                         │ HTTP /api/*
                         ↓
┌─────────────────────────────────────────────────────────────────┐
│  Backend (FastAPI) - Port 8000                                  │
│  • REST API endpoints                                           │
│  • Database connection pooling                                  │
└────────────────────────┬────────────────────────────────────────┘
                         │ PostgreSQL Protocol
                         ↓
┌─────────────────────────────────────────────────────────────────┐
│  Database (PostgreSQL 16) - Port 5432                           │
│  • NBA statistics database                                      │
│  • Persistent storage (Docker volume / K8s PVC)                 │
└─────────────────────────────────────────────────────────────────┘
```

### Deployment Architecture

```
Developer Push → GitHub Actions → Build Images → Push to ECR
                                                    ↓
                                    Update GitOps Repo (dev/stage)
                                                    ↓
                                    ArgoCD Detects Change
                                                    ↓
                                    Deploy to Kubernetes
```

---

## 📁 Repository Structure

```
scoutflow-app/
├── .github/
│   └── workflows/                    # CI/CD pipeline definitions
│       ├── backend-ci.yaml           # Backend: lint, test, build, push
│       ├── frontend-ci.yaml          # Frontend: lint, build, push
│       ├── db-ci.yaml                # Database: build, push
│       ├── helm-ci.yaml              # Helm chart validation
│       └── update-gitops.yaml        # GitOps repository sync
│
├── backend/                          # FastAPI application
│   ├── app/                          # Application code
│   │   ├── main.py                   # FastAPI app, CORS, routes
│   │   ├── database.py               # SQLAlchemy connection
│   │   ├── models.py                 # Database ORM models
│   │   └── routers/                  # API endpoints
│   ├── tests/                        # Pytest test suite
│   ├── Dockerfile                    # Multi-stage build
│   └── requirements.txt              # Dependencies
│
├── frontend/                         # Static web application
│   ├── pages/                        # HTML pages
│   ├── nginx.conf                    # Nginx config (proxy to backend)
│   ├── Dockerfile                    # Nginx-based container
│   └── package.json                  # ESLint dependencies
│
├── db/                               # Database initialization
│   ├── Dockerfile                    # PostgreSQL with init scripts
│   └── init/                         # Schema and seed data
│       ├── 01-schema.sql             # Table definitions
│       ├── 02-seed-data.sql          # NBA statistics
│       └── setup-db.sh               # External data fetching
│
├── helm/                             # Kubernetes deployment
│   └── scoutflow/                    # Helm chart
│       ├── Chart.yaml                # Chart metadata
│       ├── values.yaml               # Default configuration
│       ├── templates/                # K8s manifest templates
│       └── README.md                 # Chart documentation
│
└── docker-compose.yml                # Local development environment
```

---

## 🔄 CI/CD Pipeline

<details>
<summary><b>📖 GitHub Actions Workflows (Click to expand)</b></summary>

### 1. Backend CI (`backend-ci.yaml`)

**Triggers:** Push to main, PRs, tags `v*`

**Jobs:**

**lint-and-test:**
- Set up Python 3.11
- Install dependencies
- Run flake8 linting
- Run pytest test suite

**build-and-push:**
- Authenticate to AWS via OIDC (no static credentials)
- Login to Amazon ECR
- Build Docker image
- Tag with commit SHA and `latest`
- Push to `scoutflow-app-backend` repository

### 2. Frontend CI (`frontend-ci.yaml`)

**Triggers:** Push to main, PRs, tags `v*`

**Jobs:**
- Run ESLint on JavaScript code
- Build Nginx-based image
- Push to `scoutflow-app-frontend` ECR repository

### 3. Database CI (`db-ci.yaml`)

**Triggers:** Push to main, PRs, tags `v*`

**Jobs:**
- Build PostgreSQL image with init scripts
- Push to `scoutflow-app-db` ECR repository

### 4. Helm Chart Validation (`helm-ci.yaml`)

**Triggers:** Push to main, PRs

**Jobs:**
- Install Helm 3
- Run `helm lint` on chart
- Validate template syntax

### 5. GitOps Update (`update-gitops.yaml`)

**Triggers:** Successful completion of Backend/Frontend/Database CI on main branch

**Purpose:** Implements GitOps automation by updating the `scoutflow-gitops` repository with new image tags.

**Jobs:**
1. Checkout scoutflow-app (get commit SHA)
2. Checkout scoutflow-gitops (using `GITOPS_PAT` secret)
3. Install `yq` (YAML processor)
4. Update `global.imageTag` in `environments/dev/values.yaml`
5. Update `global.imageTag` in `environments/stage/values.yaml`
6. Commit: "Update dev/stage to image {SHA}"
7. Push to scoutflow-gitops

**Note:** Production values are NOT auto-updated (manual approval gate).

**Flow After Update:**
1. GitOps repo receives commit
2. ArgoCD detects change (3-minute poll)
3. ArgoCD auto-syncs dev/stage
4. Kubernetes pulls new images
5. Rolling update deploys new version

</details>

---

## 🐳 Local Development

<details>
<summary><b>📖 Docker Compose Setup (Click to expand)</b></summary>

### Quick Start

```bash
# 1. Clone repository
git clone https://github.com/omerbh7/scoutflow-app
cd scoutflow-app

# 2. Fetch database seed data (REQUIRED)
bash db/init/setup-db.sh

# 3. Start all services
docker-compose up --build
```

### Services

**Database (`db`):**
- Port: 5432
- Health check: `pg_isready` every 5 seconds
- Volume: `postgres_data` for persistence

**Backend (`backend`):**
- Port: 8000
- Depends on: Database (waits for health check)
- Environment: `./backend/.env`

**Frontend (`frontend`):**
- Port: 3000 (maps to container port 80)
- Depends on: Backend
- Environment: `BACKEND_URL=http://backend:8000`

### Accessing Services

- **Frontend**: http://localhost:3000
- **Backend API**: http://localhost:8000
- **API Docs**: http://localhost:8000/docs (Swagger UI)
- **Database**: localhost:5432

### Common Commands

```bash
# Start in background
docker-compose up -d

# View logs
docker-compose logs -f

# Stop services
docker-compose down

# Reset database (remove volumes)
docker-compose down -v

# Run tests
docker-compose exec backend pytest
```

</details>

---

## ☸️ Kubernetes Deployment

<details>
<summary><b>📖 Helm Chart Deployment (Click to expand)</b></summary>

### Deployment Methods

**Method 1: Direct Helm Install**

```bash
helm upgrade --install scoutflow ./helm/scoutflow \
  --namespace scoutflow \
  --create-namespace \
  --values custom-values.yaml
```

**Method 2: GitOps with ArgoCD (Production)**

This is the recommended approach. The `scoutflow-gitops` repository contains ArgoCD Application manifests that deploy this Helm chart using a multi-source configuration:

- **Source 1**: Helm chart from this repository (`helm/scoutflow`)
- **Source 2**: Values files from `scoutflow-gitops` repository

**Deployment Flow:**
1. CI/CD pushes images to ECR
2. `update-gitops.yaml` updates image tags in GitOps repo
3. ArgoCD detects change and syncs
4. Kubernetes performs rolling update

### Environment Configurations

| Environment | Namespace | Replicas | Resources | Storage | Auto-Sync |
|-------------|-----------|----------|-----------|---------|-----------|
| **Dev**     | `dev`     | 1        | Minimal   | 10Gi    | Yes       |
| **Stage**   | `stage`   | 2        | Medium    | 10Gi    | Yes       |
| **Prod**    | `prod`    | 3        | High      | 20Gi    | No        |

**Key Configuration:**

```yaml
global:
  registry: 279987127424.dkr.ecr.us-east-1.amazonaws.com
  imageTag: e7c24f013e837f438f66a6e039e673f880e2cb89  # Commit SHA

externalSecrets:
  enabled: true
  region: us-east-1
  secretName: "scoutflow/dev/database"

backend:
  replicas: 2
  resources:
    requests:
      cpu: 100m
      memory: 128Mi

ingress:
  className: alb
  host: scoutflow.example.com
```

</details>

---

## 🔐 Secret Management

<details>
<summary><b>📖 External Secrets Operator Integration (Click to expand)</b></summary>

### Architecture

```
AWS Secrets Manager (scoutflow/{env}/database)
          ↓ IRSA Authentication
External Secrets Operator (in EKS)
          ↓ Creates/Updates
Kubernetes Secret (scoutflow-db-secret)
          ↓ Mounted as env vars
Application Pods (Backend)
```

### Configuration

**Enable in Helm values:**

```yaml
externalSecrets:
  enabled: true
  region: us-east-1
  secretName: "scoutflow/dev/database"
```

**What This Creates:**

1. **ClusterSecretStore** - Configures AWS Secrets Manager as backend
2. **ExternalSecret** - Syncs specific secret to Kubernetes
3. **Kubernetes Secret** - Created automatically with keys: `DB_USER`, `DB_PASSWORD`, `DB_NAME`

**AWS Secret Format:**

```json
{
  "DB_USER": "postgres",
  "DB_PASSWORD": "randomly-generated-32-char-password",
  "DB_NAME": "nba_stats"
}
```

**Security Benefits:**
- ✅ Zero credentials in Git
- ✅ IAM-based authentication (IRSA)
- ✅ Encrypted at rest (KMS)
- ✅ Audit trail (CloudTrail)
- ✅ Environment isolation

**Local Development:**

Uses `.env` files (gitignored) with simple credentials for local PostgreSQL.

</details>

---

## 📊 Database Architecture

<details>
<summary><b>📖 Database Schema and Data Management (Click to expand)</b></summary>

### Schema

**Database:** `nba_stats`

**Tables:**
- `players` - Player profiles and biographical information
- `teams` - NBA team information
- `games` - Game schedules and results
- `stats` - Player statistics per game

### Professional Data Management

Instead of committing large seed data (1MB+) to Git, ScoutFlow uses an **externalized data approach**:

**`db/init/setup-db.sh`:**
```bash
#!/bin/bash
# Fetches professional NBA season data from external source
curl -o db/init/02-seed-data.sql \
  https://gist.githubusercontent.com/.../nba-2025-26-season.sql
```

**Benefits:**
- Reduces repository size
- Keeps Git history clean
- Demonstrates professional data lifecycle management
- Easy to update data independently

**Deployment Strategies:**

- **Local/Dev**: PostgreSQL container with seed data
- **Stage**: PostgreSQL StatefulSet with PVC (10Gi)
- **Prod**: PostgreSQL StatefulSet with PVC (20Gi) or AWS RDS

</details>

---

## 🚀 Deployment Strategies

<details>
<summary><b>📖 Multi-Environment Deployment (Click to expand)</b></summary>

### Development Environment

**Purpose:** Rapid iteration and feature testing

**Configuration:**
- Namespace: `dev`
- Replicas: 1 per service
- Resources: Minimal (100m CPU, 128Mi memory)
- Image updates: Automatic on every push to main
- ArgoCD sync: Automated with self-healing

**Deployment Flow:**
```
Push to main → CI builds images → GitOps update → ArgoCD sync → Deployed
Time: ~5-10 minutes
```

### Staging Environment

**Purpose:** QA validation and pre-production testing

**Configuration:**
- Namespace: `stage`
- Replicas: 2 per service (HA testing)
- Resources: Production-like (200m-1000m CPU, 256Mi-512Mi memory)
- Image updates: Automatic on every push to main
- Monitoring: Prometheus + Grafana enabled

### Production Environment

**Purpose:** Live user-facing workloads

**Configuration:**
- Namespace: `prod`
- Replicas: 3 per service (high availability)
- Resources: High limits (500m-2000m CPU, 512Mi-1Gi memory)
- Image updates: **Manual only**
- ArgoCD sync: **Manual approval required**

**Deployment Flow:**
```
1. Validate in staging
2. Identify successful commit SHA
3. Manually update prod values file in GitOps repo
4. ArgoCD shows "OutOfSync"
5. Operator reviews diff
6. Manual sync: argocd app sync scoutflow-prod
7. Rolling update to production
```

### Rollback Procedures

**GitOps Rollback (Recommended):**
```bash
# In scoutflow-gitops repository
git log environments/prod/values.yaml
git checkout <previous-commit> -- environments/prod/values.yaml
git commit -m "Rollback prod to previous version"
git push

# ArgoCD syncs to previous version
argocd app sync scoutflow-prod
```

**Kubernetes Rollback (Quick):**
```bash
kubectl rollout undo deployment/scoutflow-backend -n prod
```

</details>

---

## 🛡️ Security Features

<details>
<summary><b>📖 Security Implementation (Click to expand)</b></summary>

### Container Security

- Multi-stage Docker builds (minimal runtime images)
- Non-root users where possible
- ECR automatic image scanning

### Kubernetes Security

- Network policies for pod isolation
- Pod security standards (restricted context)
- Resource limits (prevent resource exhaustion)

### Secret Management

- External Secrets Operator (no secrets in Git)
- AWS Secrets Manager with KMS encryption
- IRSA authentication (no AWS keys in cluster)
- Automated secret rotation

### CI/CD Security

- OIDC authentication (no static AWS credentials)
- Branch protection (PR reviews required)
- Dependabot for security updates

### Application Security

- CORS configuration (Nginx)
- Input validation (FastAPI Pydantic models)
- SQL injection prevention (SQLAlchemy ORM)
- API rate limiting (Nginx)

</details>

---

## 📈 Monitoring and Observability

<details>
<summary><b>📖 Monitoring Stack (Click to expand)</b></summary>

### Prometheus Metrics

**Automatic Collection:**
- Kubernetes cluster metrics (nodes, pods, containers)
- Application metrics (if instrumented)
- Database metrics (PostgreSQL exporter)
- Nginx metrics (stub_status module)

**Custom Metrics (Backend):**

Add Prometheus instrumentation to FastAPI:

```python
from prometheus_client import Counter, Histogram

request_count = Counter('http_requests_total', 'Total requests', ['method', 'endpoint'])
request_duration = Histogram('http_request_duration_seconds', 'Request duration')
```

### Grafana Dashboards

**Pre-Installed:**
- Kubernetes cluster overview
- Node resource usage
- Pod resource usage
- Persistent volume usage

**Access:**
```bash
kubectl port-forward -n monitoring svc/kube-prometheus-stack-grafana 3000:80
# URL: http://localhost:3000
# Credentials: admin / (check monitoring namespace secret)
```

### Logging

```bash
# View backend logs
kubectl logs -f deployment/scoutflow-backend -n scoutflow

# View all pod logs
kubectl logs -f -l app=scoutflow-backend -n scoutflow
```

</details>

---

## 🔗 Integration with Other Repositories

### [scoutflow-infra](https://github.com/omerbh7/scoutflow-infra)

**What Infrastructure Provides:**
- AWS EKS cluster for running application
- ECR repositories for Docker images
- AWS Secrets Manager secrets (database credentials)
- External Secrets Operator deployment
- ArgoCD installation
- Load Balancer Controller for Ingress
- VPC networking and security groups
- Monitoring stack (Prometheus + Grafana)

**Dependencies:**
- ECR repositories must exist before CI/CD can push images
- AWS Secrets must exist before External Secrets can sync
- ArgoCD must be installed before GitOps deployments work

---

### [scoutflow-gitops](https://github.com/omerbh7/scoutflow-gitops)

**What GitOps Provides:**
- ArgoCD Application manifests
- Environment-specific values files (dev, stage, prod)
- Multi-source configuration (chart from this repo, values from GitOps repo)
- Deployment automation (auto-sync for dev/stage, manual for prod)
- Image tag management (commit SHAs)

**Workflow:**
1. CI/CD in this repo builds images and pushes to ECR
2. `update-gitops.yaml` updates image tags in GitOps repo
3. ArgoCD detects change in GitOps repo
4. ArgoCD pulls chart from this repo + values from GitOps repo
5. ArgoCD deploys to Kubernetes

**Why Separate?**
- Separation of concerns (code vs. configuration)
- Different access controls
- Same chart, different values per environment
- Audit trail via Git history

---

## 🔧 Troubleshooting

<details>
<summary><b>📖 Common Issues and Solutions (Click to expand)</b></summary>

### Local Development

**Database not ready:**
```
Error: could not connect to database
```
- Wait for health check to pass
- Check logs: `docker-compose logs db`
- Ensure `setup-db.sh` was run
- Verify `.env` file exists

**Port already in use:**
```
Error: bind: address already in use
```
- Change port in `docker-compose.yml`
- Kill process: `lsof -ti:8000 | xargs kill`

### Kubernetes Deployment

**ImagePullBackOff:**
- Verify ECR repository exists
- Check image tag in values file
- Ensure `ecr-registry-secret` exists
- Verify IAM permissions for ECR pull

**CrashLoopBackOff:**
- Check pod logs: `kubectl logs <pod-name> -n scoutflow`
- Verify environment variables
- Check database connectivity
- Review resource limits (OOMKilled?)

**External Secret not syncing:**
- Verify AWS secret exists
- Check IAM role permissions
- Verify service account annotation
- Check External Secrets Operator logs

**Ingress not working:**
- Verify ALB Controller is running
- Check Ingress annotations
- Verify backend service is healthy
- Review ALB target group health

### CI/CD

**ECR push fails:**
- Verify OIDC role exists
- Check IAM role trust policy
- Verify `AWS_ACCOUNT_ID` secret is set

**GitOps update fails:**
- Verify `GITOPS_PAT` secret is set
- Check PAT has write access
- Ensure PAT is not expired

</details>

---

## ⚠️ Important Notes

> [!WARNING]
> **Database Persistence**
> - In Docker Compose, data persists in `postgres_data` volume
> - To reset: `docker-compose down -v`

> [!IMPORTANT]
> **Data Infrastructure**
> - Large dataset (1MB+) hosted as GitHub Gist (not in Git)
> - `db/init/setup-db.sh` fetches data before first run
> - Demonstrates professional data lifecycle management

> [!NOTE]
> **Production Deployments**
> - Use External Secrets (never fallback secrets)
> - Manual approval required for production
> - Always validate in staging first

---

## 📚 Additional Resources

- **Helm Chart Documentation**: [helm/scoutflow/README.md](helm/scoutflow/README.md)
- **Infrastructure Repository**: [scoutflow-infra](https://github.com/omerbh7/scoutflow-infra)
- **GitOps Repository**: [scoutflow-gitops](https://github.com/omerbh7/scoutflow-gitops)
- **FastAPI Documentation**: https://fastapi.tiangolo.com/
- **Helm Documentation**: https://helm.sh/docs/
- **External Secrets Operator**: https://external-secrets.io/
