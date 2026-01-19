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

### AWS EKS Deployment

```bash
# Update values.yaml for production
# Change storageClass from "standard" to "gp2"

# Install chart
helm install scoutflow ./helm/scoutflow --namespace scoutflow --create-namespace

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
  env:
    POSTGRES_USER: postgres
    POSTGRES_PASSWORD: password123  # Change in production!
    POSTGRES_DB: nba_stats

# Backend
backend:
  replicas: 2  # High availability
  
# Frontend
frontend:
  replicas: 2

# Ingress
ingress:
  host: scoutflow.example.com  # Update with your domain
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
- PostgreSQL 13
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

Database credentials are managed securely:

- **ConfigMap** (`scoutflow-db-config`): Non-sensitive config (host, port, DB name)
- **Secret** (`scoutflow-db-secret`): Sensitive credentials (username, password)

All pods reference these resources via `valueFrom` instead of hardcoded values.

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

## Production Checklist

Before deploying to production:

- [ ] Change `POSTGRES_PASSWORD` in `values.yaml`
- [ ] Update `ingress.host` to your domain
- [ ] Configure TLS certificate
- [ ] Set `storageClass` to `gp2` (AWS EKS)
- [ ] Review resource limits for your cluster size
- [ ] Enable monitoring/logging
- [ ] Set up backup strategy for database

## Development

Chart developed and tested on:
- Minikube 1.32+
- Kubernetes 1.28
- Helm 3.14

Designed for deployment to AWS EKS with ALB Ingress Controller.

## License

MIT
