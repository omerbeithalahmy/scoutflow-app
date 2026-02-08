# ScoutFlow Application

> **NBA analytics platform for scouting and player performance analysis**

A microservices-based web application providing real-time data ingestion, advanced analytics, and a responsive frontend interface.

---

## 📋 Overview

This repository contains the application source code for the ScoutFlow platform, including:

- **Frontend** - Responsive web interface (Nginx + HTML/JS)
- **Backend** - High-performance API server (FastAPI)
- **Helm Charts** - Kubernetes deployment manifests

**Key Technologies:**
- ✅ FastAPI (Python Backend)
- ✅ Nginx (Frontend Serving)
- ✅ PostgreSQL (Relational Database)
- ✅ Docker (Containerization)
- ✅ Helm (Kubernetes Packaging)
- ✅ GitHub Actions (CI/CD Automation)

---

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────────┐
│  Kubernetes Cluster / Docker Compose                │
│                                                     │
│  ┌──────────────┐      ┌──────────────┐             │
│  │  Frontend    │      │   Backend    │             │
│  │  (Nginx)     │ ──→  │  (FastAPI)   │             │
│  └──────┬───────┘      └──────┬───────┘             │
│         │                     │                     │
│         │              ┌──────▼───────┐             │
│         │              │  PostgreSQL  │             │
│         │              │  (Database)  │             │
│  ┌──────▼───────┐      └──────────────┘             │
│  │   User       │                                   │
│  │ (Browser)    │                                   │
│  └──────────────┘                                   │
└─────────────────────────────────────────────────────┘
```

---

## 📁 Repository Structure

```
scoutflow-app/
├── .github/
│   └── workflows/                # CI/CD pipelines
│       ├── backend-ci.yaml       # Backend tests & linting
│       ├── frontend-ci.yaml      # Frontend linting
│       └── helm-ci.yaml          # Helm chart linting
├── backend/                      # FastAPI application
│   ├── app/                      # API routes and models
│   └── tests/                    # Pytest suite
├── frontend/                     # Web interface
│   ├── pages/                    # HTML/JS views
│   └── nginx.conf                # Nginx configuration
├── helm/                         # Kubernetes charts
│   └── scoutflow/                # Main application chart
└── db/                           # Database schemas & Bootstrap
    ├── init/                     # Schema definitions
    └── setup-db.sh               # Professional data fetching script
```

---

## 🚀 Quick Start

### Prerequisites

### 1. **Docker Desktop** ([Download](https://www.docker.com/products/docker-desktop))

### 🐳 Run Locally (Docker Compose)

The easiest way to run the full stack locally:

```bash
# 1. Clone the repository
git clone https://github.com/omerbh7/scoutflow-app
cd scoutflow-app

# 2. ⚡️ Bootstrap the Database (Required)
# This fetches the professional seed data from our external repository.
# You MUST run this before starting Docker.
bash db/init/setup-db.sh

# 3. 🐳 Build and start services
docker-compose up --build
```

### 🔍 Verify Deployment

After starting the containers:

- **Frontend:** [http://localhost:3000](http://localhost:3000)
- **Backend API:** [http://localhost:8000/docs](http://localhost:8000/docs)
- **Database:** Port mapped to `5432`

---

## 🔄 CI/CD Pipeline

<details>
<summary><b>GitHub Actions Workflows (Click to expand)</b></summary>

### 1. Application CI

Separate workflows run for each microservice on Pull Requests:

- **Backend CI**: Runs `pytest` and `flake8`
- **Frontend CI**: Runs `eslint`
- **Helm CI**: Runs `helm lint` on the charts

**Workflows:**
- [backend-ci.yaml](.github/workflows/backend-ci.yaml)
- [frontend-ci.yaml](.github/workflows/frontend-ci.yaml)

### 2. Build & Push

On merge to `main` (or tag creation), images are built and pushed to AWS ECR:

1. Checkout code
2. Configure AWS Credentials (OIDC)
3. Login to Amazon ECR
4. Build Docker image
5. Push with `latest` and `sha` tags

</details>

---

## ☸️ Kubernetes Deployment (Helm)

<details>
<summary><b>📖 Deploying with Helm (Click to expand)</b></summary>

The application is packaged as a Helm chart for deployment to EKS.

### 1. Structure

The chart in `helm/scoutflow` manages:
- Deployments for Backend, Frontend
- Network Services and Ingress
- Secrets (via External Secrets)
- ConfigMaps

### 2. Install/Upgrade

```bash
# Add repo (if hosted) or local install
helm upgrade --install scoutflow ./helm/scoutflow \
  --namespace scoutflow \
  --create-namespace \
  --values ./helm/scoutflow/values.yaml
```

### 3. Configuration

Key values in `values.yaml`:

| Key | Description | Default |
|-----|-------------|---------|
| `backend.image.repository` | ECR Repo URL | `.../scoutflow-backend` |
| `backend.replicas` | Number of pods | `2` |
| `ingress.className` | Ingress Class | `alb` |
| `database.storageClass` | PVC Storage Class | `standard` |

</details>

---

## 🔐 Secret Management

<details>
<summary><b>📖 External Secrets Integration (Click to expand)</b></summary>

In production (EKS), secrets are NOT stored in Git. We use the **External Secrets Operator (ESO)**.

**Workflow:**
1. Secrets are created in **AWS Secrets Manager**
2. `ExternalSecret` resource in Helm chart defines mapping
3. ESO provider fetches value and creates native K8s Secret
4. Pods mount the native Secret as env vars

**Local Development:**
- Uses `.env` files (gitignored)
- `docker-compose` loads them automatically

</details>

---

## 🔗 Integration with Other Repos

### [scoutflow-infra](https://github.com/omerbh7/scoutflow-infra)
**Infrastructure:** Provisions the EKS cluster, RDS/Postgres (in Prod), and ECR repositories where these images are stored.

### [scoutflow-gitops](https://github.com/omerbh7/scoutflow-gitops)
**Deployment:** Manages the ArgoCD application that deploys this Helm chart to the cluster.

---

## ⚠️ Important Notes

> [!WARNING]
> **Database Persistence**
> - In local Docker Compose, data persists in the `postgres_data` volume.
> - To reset: `docker-compose down -v`

> [!IMPORTANT]
> **Data Infrastructure & Best Practices**
> - **Externalized Seeding**: The large 2025-26 Season dataset (1MB+) is hosted as a GitHub Gist instead of being committed to Git. This follows industry best practices for reducing repository bloat and managing large static assets.
> - **Automated Retrieval**: The `db/init/setup-db.sh` script handles the secure "just-in-time" fetching of this data. This architecture demonstrates a professional, infrastructure-aware approach to data lifecycle management.

---

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Run local tests: `docker-compose exec backend pytest`
4. Verify local build: `docker-compose up --build`
5. Submit a Pull Request
