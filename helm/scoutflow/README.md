# ScoutFlow Helm Chart

Production-ready Helm chart for deploying the ScoutFlow NBA analytics application to Kubernetes.

## Overview

This chart deploys a full-stack application with:
- **PostgreSQL Database** (StatefulSet with persistent storage)
- **Data Ingest Job** (Loads NBA player/team data)
- **FastAPI Backend** (RESTful API)
- **React Frontend** (Nginx-served SPA)
- **AWS ALB Ingress** (External access)

## Prerequisites

- Kubernetes 1.19+
- Helm 3.0+
- PersistentVolume provisioner (for database storage)
- **For ECR deployment**: AWS CLI configured with ECR access

## Quick Start

### Local Testing (Minikube)

```bash
# Start Minikube
minikube start --cpus=4 --memory=4096

# Enable storage
minikube addons enable storage-provisioner

# Build Docker images in Minikube
eval $(minikube docker-env)
docker build -t scoutflow-app-db:latest ./db
docker build -t scoutflow-app-ingest:latest ./ingest
docker build -t scoutflow-app-backend:latest ./backend
docker build -t scoutflow-app-frontend:latest ./frontend

# Install chart
helm install scoutflow ./helm/scoutflow --namespace scoutflow --create-namespace

# Access application
kubectl port-forward -n scoutflow service/scoutflow-frontend 3000:80
kubectl port-forward -n scoutflow service/scoutflow-backend 8000:8000
# Open: http://localhost:3000
```

### AWS EKS with ECR Images

```bash
# Create ECR image pull secret
kubectl create secret docker-registry ecr-registry-secret \
  --docker-server=279987127424.dkr.ecr.us-east-1.amazonaws.com \
  --docker-username=AWS \
  --docker-password=$(aws ecr get-login-password --region us-east-1) \
  --namespace scoutflow

# Install chart with ECR images
helm install scoutflow ./helm/scoutflow \
  --namespace scoutflow \
  --create-namespace \
  --set ecr.enabled=true \
  --set global.imageTag=latest

# Get ALB address
kubectl get ingress -n scoutflow
```

## Configuration

Key configuration in `values.yaml`:

```yaml
# Database
database:
  replicas: 1
  persistence:
    storageClass: "standard"  # Use "gp2" for AWS EKS
    size: 10Gi
  # Note: Database credentials are managed via External Secrets in production
  # See "Secrets Management" section below

# Backend
backend:
  replicas: 2  # High availability
  
# Frontend
frontend:
  replicas: 2

# Ingress
ingress:
  host: scoutflow.example.com  # Update with your domain

# External Secrets (REQUIRED for production)
externalSecrets:
  enabled: true  # Must be true for production
  region: us-east-1
  secretName: "scoutflow/prod/database"  # Your AWS Secrets Manager secret path
```

## Architecture

```
┌─────────────────┐
│   ALB Ingress   │  (External access)
└────────┬────────┘
         │
    ┌────▼────────┐
    │  Frontend   │  (2 replicas, Nginx)
    │   Service   │
    └────────┬────┘
             │
        ┌────▼────────┐
        │   Backend   │  (2 replicas, FastAPI)
        │   Service   │
        └────┬────────┘
             │
        ┌────▼────────┐
        │  Database   │  (StatefulSet, PostgreSQL)
        │   Service   │
        └─────────────┘
             ▲
             │
        ┌────┴────────┐
        │ Ingest Job  │  (Runs once, loads data)
        └─────────────┘
```

## Components

### Database (StatefulSet)
- PostgreSQL 16
- Persistent storage via PVC
- Headless service for stable DNS
- Health checks via `pg_isready`

### Ingest Job
- Runs post-install via Helm hooks
- Waits for database readiness (init container)
- Loads NBA teams, players, games, and stats
- Completes in ~2 minutes

### Backend (Deployment)
- FastAPI REST API
- 2 replicas for high availability
- Rolling updates (zero downtime)
- Health checks on `/health`
- Environment variables from ConfigMap/Secret

### Frontend (Deployment)
- React SPA served by Nginx
- 2 replicas for high availability
- Optimized resources for static serving
- Health checks on `/`

### Ingress
- AWS ALB integration
- Path-based routing to frontend
- TLS-ready (configure in production)

## Secrets Management

### ⚠️ Production Requirement: External Secrets Operator

For **production deployments**, database credentials MUST be managed via External Secrets Operator:

**Prerequisites** (provided by `scoutflow-infra`):
- External Secrets Operator installed in cluster
- IAM role for service account (IRSA) configured
- Secret exists in AWS Secrets Manager with keys: `username`, `password`, `database`

**Production Configuration**:
```yaml
externalSecrets:
  enabled: true
  region: us-east-1
  secretName: "scoutflow/prod/database"  # Path to your AWS Secrets Manager secret
```

**What Happens**:
1. External Secrets Operator reads from AWS Secrets Manager
2. Creates Kubernetes Secret: `scoutflow-db-secret`
3. Pods consume secret via environment variables
4. **Zero passwords in Git** ✅

### Local Development

For **local development** (Minikube), External Secrets can be disabled:

```yaml
externalSecrets:
  enabled: false  # Uses fallback secret
```

When disabled, a fallback secret is created using values from `database.env` in `values.yaml`.

### Resources Created

- **ConfigMap** (`scoutflow-db-config`): Non-sensitive config (host, port, DB name)
- **Secret** (`scoutflow-db-secret`): Sensitive credentials (username, password)
  - Created by External Secrets Operator (production)
  - Or fallback secret template (local dev)

All pods reference these resources via `envFrom` instead of hardcoded values.

## Resource Limits

Optimized for 2-node cluster:

| Component | CPU Request | CPU Limit | Memory Request | Memory Limit |
|-----------|-------------|-----------|----------------|--------------|
| Database  | 250m        | 500m      | 256Mi          | 512Mi        |
| Backend   | 100m        | 500m      | 128Mi          | 256Mi        |
| Frontend  | 50m         | 200m      | 64Mi           | 128Mi        |
| Ingest    | 200m        | 1000m     | 256Mi          | 512Mi        |

## Upgrading

```bash
# Update chart
helm upgrade scoutflow ./helm/scoutflow --namespace scoutflow

# Rollback if needed
helm rollback scoutflow --namespace scoutflow
```

## Uninstalling

```bash
helm uninstall scoutflow --namespace scoutflow
kubectl delete namespace scoutflow
```

## Troubleshooting

### Pods not starting
```bash
kubectl get pods -n scoutflow
kubectl describe pod <pod-name> -n scoutflow
kubectl logs <pod-name> -n scoutflow
```

### Ingest job stuck
```bash
kubectl logs -n scoutflow job/scoutflow-ingest
kubectl logs -n scoutflow job/scoutflow-ingest -c wait-for-db
```

### Database not ready
```bash
kubectl logs -n scoutflow scoutflow-db-0
kubectl exec -n scoutflow scoutflow-db-0 -- pg_isready -U postgres
```

### Check all resources
```bash
kubectl get all -n scoutflow
helm status scoutflow -n scoutflow
```

### External Secrets not syncing
```bash
# Check if External Secrets Operator is installed
kubectl get pods -n external-secrets-system

# Check ExternalSecret status
kubectl get externalsecret -n scoutflow
kubectl describe externalsecret scoutflow-db-external-secret -n scoutflow

# Check if secret was created
kubectl get secret scoutflow-db-secret -n scoutflow

# Check operator logs
kubectl logs -n external-secrets-system -l app.kubernetes.io/name=external-secrets

# Verify AWS Secrets Manager secret exists
aws secretsmanager get-secret-value --secret-id scoutflow/prod/database --region us-east-1
```

## Production Checklist

Before deploying to production:

- [ ] **Enable External Secrets**: Set `externalSecrets.enabled: true`
- [ ] **Configure AWS Secret**: Set `externalSecrets.secretName` to your AWS Secrets Manager secret path
- [ ] **Verify IAM Roles**: Ensure External Secrets Operator has IRSA configured (via `scoutflow-infra`)
- [ ] **Update Ingress Host**: Change `ingress.host` to your domain
- [ ] **Configure TLS Certificate**: Set up cert-manager or manual TLS
- [ ] **Set Storage Class**: Use `gp2` or `gp3` for AWS EKS
- [ ] **Review Resource Limits**: Adjust based on your cluster size and load
- [ ] **Enable Monitoring/Logging**: Set up Prometheus/Grafana
- [ ] **Database Backups**: Configure backup strategy for StatefulSet PVC

## Development

Chart developed and tested on:
- Minikube 1.32+
- Kubernetes 1.28
- Helm 3.14

Designed for deployment to AWS EKS with ALB Ingress Controller.

## License

MIT
