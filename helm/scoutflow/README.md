# ScoutFlow Helm Chart

> **Kubernetes deployment chart for the ScoutFlow NBA analytics platform**

A production-ready Helm chart primarily designed for deployment on AWS EKS, featuring microservices orchestration, secret management via External Secrets, and Ingress integration.

---

## 📋 Overview

This chart deploys the complete ScoutFlow application stack:

- **Frontend** - Nginx static site
- **Backend** - FastAPI application
- **Ingest** - Data accumulation job (runs on hook/startup)
- **Database** - PostgreSQL (StatefulSet for Dev / External for Prod)
- **Networking** - Service discovery & ALB Ingress

---

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────────────────┐
│  Kubernetes Cluster (EKS)                                   │
│                                                             │
│       ┌─────────────┐                                       │
│       │  Ingress    │ (AWS Load Balancer)                   │
│       └─────┬───────┘                                       │
│             │                                               │
│             ▼                                               │
│    ┌───────────────────┐    ┌──────────────────────────┐    │
│    │ Frontend Service  │    │      backend-service     │    │
│    └────────┬──────────┘    └────────────┬─────────────┘    │
│             │                            │                  │
│    ┌────────▼──────────┐    ┌────────────▼─────────────┐    │
│    │  Frontend Pods    │    │      Backend Pods        │    │
│    └───────────────────┘    └──────┬────────────┬──────┘    │
│                                    │            │           │
│                             ┌──────▼─────┐  ┌───▼───────┐   │
│                             │ Ingest Job │  │ Database  │   │
│                             └────────────┘  └───────────┘   │
└─────────────────────────────────────────────────────────────┘
```

---

## 🚀 Quick Start

### Prerequisites

- Kubernetes 1.24+
- Helm 3.0+
- PV provisioner support in the underlying infrastructure

### Install Chart

```bash
# 1. Clone repository
git clone https://github.com/omerbh7/scoutflow-app
cd scoutflow-app

# 2. Install chart
helm upgrade --install scoutflow ./helm/scoutflow \
  --namespace scoutflow \
  --create-namespace \
  --values ./helm/scoutflow/values.yaml
```

### Verify Installation

```bash
# Check status
helm status scoutflow -n scoutflow

# See all resources
kubectl get all -n scoutflow
```

---

## ⚙️ Configuration

<details>
<summary><b>📖 Detailed Values Table (Click to expand)</b></summary>

| Key | Description | Default |
|-----|-------------|---------|
| `global.registry` | Container registry URL | `...dkr.ecr.us-east-1...` |
| `global.imageTag` | Tag shared by all images | `latest` |
| **Backend** | | |
| `backend.image.repository` | Backend image name/path | `scoutflow-backend` |
| `backend.replicas` | Number of pod replicas | `2` |
| `backend.resources` | CPU/Memory requests/limits | `100m/128Mi` |
| **Frontend** | | |
| `frontend.image.repository` | Frontend image name/path | `scoutflow-frontend` |
| `frontend.replicas` | Number of pod replicas | `2` |
| `frontend.service.port` | Service exposure port | `80` |
| **Ingest** | | |
| `ingest.image.repository` | Ingest image name/path | `scoutflow-ingest` |
| `ingest.restartPolicy` | Job restart policy | `Never` |
| **Database** | | |
| `database.enabled` | Deploy statefulset DB | `true` |
| `database.persistence.size` | PVC size | `10Gi` |
| **Ingress** | | |
| `ingress.enabled` | Create Ingress resource | `true` |
| `ingress.className` | Ingress controller class | `alb` |
| `ingress.host` | Hostname for routing | `scoutflow.example.com` |

</details>

---

## 🔐 Advanced Features

<details>
<summary><b>📖 External Secrets Integration (Click to expand)</b></summary>

This chart supports **External Secrets Operator** (ESO) to sync secrets from AWS Secrets Manager directly into Kubernetes secrets.

**To Enable:**
1. Ensure ESO is installed in your cluster.
2. Update `values.yaml`:
   ```yaml
   externalSecrets:
     enabled: true
     region: us-east-1
     secretName: "scoutflow/prod/database"
   ```

**How it works:**
- The chart creates an `ExternalSecret` resource.
- ESO fetches the secret from AWS.
- A native Kubernetes `Secret` named `{{release}}-db-secret` is created.
- Pods mount `DB_PASSWORD` from this secret automatically.

</details>

<details>
<summary><b>📖 Database: Local vs Manual (Click to expand)</b></summary>

**Local Development (Default):**
- A StatefulSet `postgres:16` is deployed.
- A PVC is claimed using the `standard` storage class.
- This is useful for testing without RD access.

**Production Mode:**
- Use an external AWS RDS instance.
- Set `database.image.repository` to `""` (or disable the sub-chart/statefulset logic if refactored).
- *Note: Current chart logic deploys the statefulset by default. For production, ensure you override connection strings via External Secrets to point to RDS, effectively ignoring the local DB.*

</details>

<details>
<summary><b>📖 Ingress Strategy (Click to expand)</b></summary>

Designed for **AWS Load Balancer Controller**:
- Annotations are set for `internet-facing` scheme.
- Uses `alb` ingress class.
- Supports TLS termination if `ingress.tls.enabled` is set (requires Cert Manager).

</details>

---

## ⚠️ Troubleshooting

> [!WARNING]
> **Ingest Job**
> The ingest service is a **Job**, not a Deployment. It runs to completion. If it fails (e.g., DB not ready), it will back off and retry up to `.backoffLimit` (default 3) times.

> [!NOTE]
> **Image Pull Secrets**
> If pulling from a private ECR, ensure the `ecr-registry-secret` exists in the namespace or enable `ecr.enabled` to have the chart attempt to assume a role (if configured).

---

## 🤝 Contributing

1. Update `values.yaml` with any new default.
2. Verify template rendering: `helm template .`
3. Bump chart version in `Chart.yaml`.
