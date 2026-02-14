# ScoutFlow Helm Chart

> **Production-ready Kubernetes deployment chart for the ScoutFlow NBA analytics platform**

Complete Helm chart for deploying the ScoutFlow application stack to Kubernetes, with External Secrets integration, multi-environment support, and AWS EKS optimizations.

---

## 📋 Overview

This chart deploys the complete ScoutFlow application stack to Kubernetes, managing deployments, services, persistent storage, secrets, and ingress configuration. Designed primarily for AWS EKS but adaptable to other Kubernetes platforms.

**Deployed Components:**
- **Frontend** - Nginx-based static web server
- **Backend** - FastAPI application server
- **Database** - PostgreSQL 16 StatefulSet with persistent storage
- **Networking** - Services and ALB Ingress
- **Secrets** - External Secrets Operator integration
- **Configuration** - ConfigMaps for environment settings

**Key Features:**
- ✅ External Secrets Operator (AWS Secrets Manager)
- ✅ AWS Load Balancer Controller (ALB Ingress)
- ✅ Multi-environment configuration (dev, stage, prod)
- ✅ Persistent storage (EBS volumes)
- ✅ Resource limits and health checks
- ✅ High availability support
- ✅ ECR image pull secrets

---

## 🏗️ Architecture

### Kubernetes Resource Architecture

```
Ingress (AWS ALB) - internet-facing
          ↓
Frontend Service (ClusterIP:80)
          ↓
Frontend Deployment (Nginx pods)
          ↓ /api/* proxy
Backend Service (ClusterIP:8000)
          ↓
Backend Deployment (FastAPI pods)
          ↓ PostgreSQL protocol
Database Service (ClusterIP:5432)
          ↓
Database StatefulSet (PostgreSQL + PVC)
```

### Secret Management Architecture

```
AWS Secrets Manager (scoutflow/{env}/database)
          ↓ IRSA Authentication
ClusterSecretStore (cluster-wide)
          ↓
ExternalSecret (namespace-scoped)
          ↓ Creates/Updates
Kubernetes Secret (scoutflow-db-secret)
          ↓ Mounted as env vars
Backend Pods
```

**Fallback:** If External Secrets disabled, chart creates fallback secret from `values.yaml` (local dev only).

---

## 📁 Chart Structure

```
helm/scoutflow/
├── Chart.yaml                        # Chart metadata
├── values.yaml                       # Default configuration
├── README.md                         # This file
└── templates/                        # Kubernetes manifests
    ├── backend-deployment.yaml       # Backend Deployment
    ├── backend-service.yaml          # Backend Service
    ├── frontend-deployment.yaml      # Frontend Deployment
    ├── frontend-service.yaml         # Frontend Service
    ├── database-statefulset.yaml     # PostgreSQL StatefulSet
    ├── database-service.yaml         # Database Service
    ├── ingress.yaml                  # ALB Ingress
    ├── configmap.yaml                # Application config
    ├── secretstore.yaml              # ClusterSecretStore
    ├── externalsecret.yaml           # ExternalSecret
    ├── secret-fallback.yaml          # Fallback secret
    ├── ecr-secret.yaml               # ECR pull secret
    └── serviceaccount.yaml           # Service account (IRSA)
```

<details>
<summary><b>📖 Template Details (Click to expand)</b></summary>

### Deployment Templates

**Backend Deployment:**
- Image: `{{ .Values.global.registry }}/{{ .Values.backend.image.repository }}:{{ .Values.global.imageTag }}`
- Replicas: Configurable (1-3 based on environment)
- Strategy: RollingUpdate (max surge: 1, max unavailable: 0)
- Environment: Database credentials from `scoutflow-db-secret`
- Health checks: Liveness and readiness probes on `/health`

**Frontend Deployment:**
- Image: `{{ .Values.global.registry }}/{{ .Values.frontend.image.repository }}:{{ .Values.global.imageTag }}`
- Replicas: Configurable
- Environment: `BACKEND_URL=http://{{ .Release.Name }}-backend-service:8000`
- Health checks: HTTP GET `/` on port 80

**Database StatefulSet:**
- Image: `{{ .Values.global.registry }}/{{ .Values.database.image.repository }}:{{ .Values.global.imageTag }}`
- Replicas: 1 (typically)
- Persistent storage: VolumeClaimTemplate with configurable size
- Storage class: `standard` (default) or `gp3` (recommended for EKS)
- Health checks: `pg_isready` command

### Service Templates

All services use `ClusterIP` type for internal communication:

- **backend-service**: Port 8000
- **frontend-service**: Port 80
- **database-service**: Port 5432

### Ingress Template

**Configuration:**
- Ingress class: `alb` (AWS Load Balancer Controller)
- Annotations: `alb.ingress.kubernetes.io/scheme`, `target-type: ip`
- Routes: All traffic to frontend service
- TLS: Optional (configurable)

### External Secrets Templates

**ClusterSecretStore:**
- Provider: AWS Secrets Manager
- Region: Configurable
- Auth: IRSA (service account with IAM role annotation)

**ExternalSecret:**
- References ClusterSecretStore
- Syncs from AWS secret: `{{ .Values.externalSecrets.secretName }}`
- Creates Kubernetes secret: `scoutflow-db-secret`
- Keys: `DB_USER`, `DB_PASSWORD`, `DB_NAME`

</details>

---

## ⚙️ Configuration

### Default Values

<details>
<summary><b>📖 Complete Values Reference (Click to expand)</b></summary>

```yaml
# Global configuration
global:
  registry: 279987127424.dkr.ecr.us-east-1.amazonaws.com
  imageTag: latest

# Image pull secrets
imagePullSecrets:
  - name: ecr-registry-secret

# Database configuration
database:
  image:
    repository: scoutflow-app-db
    pullPolicy: Always
  replicas: 1
  service:
    port: 5432
  persistence:
    storageClass: "standard"
    size: 10Gi
  env:
    POSTGRES_USER: postgres
    POSTGRES_PASSWORD: localdevpassword
    POSTGRES_DB: nba_stats
  resources:
    requests:
      cpu: 250m
      memory: 256Mi
    limits:
      cpu: 500m
      memory: 512Mi

# Backend configuration
backend:
  image:
    repository: scoutflow-app-backend
    pullPolicy: Always
  replicas: 2
  service:
    port: 8000
  resources:
    requests:
      cpu: 100m
      memory: 128Mi
    limits:
      cpu: 500m
      memory: 256Mi

# Frontend configuration
frontend:
  image:
    repository: scoutflow-app-frontend
    pullPolicy: Always
  replicas: 2
  service:
    port: 80
  resources:
    requests:
      cpu: 50m
      memory: 64Mi
    limits:
      cpu: 200m
      memory: 128Mi

# Ingress configuration
ingress:
  className: alb
  host: scoutflow.example.com
  albScheme: internet-facing
  tls:
    enabled: false

# External Secrets configuration
externalSecrets:
  enabled: false
  region: us-east-1
  secretName: ""  # e.g., "scoutflow/dev/database"
```

</details>

### Environment-Specific Configurations

The `scoutflow-gitops` repository contains environment-specific values:

| Environment | Replicas | Resources | Storage | Image Updates |
|-------------|----------|-----------|---------|---------------|
| **Dev**     | 1        | Minimal   | 10Gi    | Automatic     |
| **Stage**   | 2        | Medium    | 10Gi    | Automatic     |
| **Prod**    | 3        | High      | 20Gi    | Manual        |

**Example (Dev):**
```yaml
global:
  imageTag: e7c24f013e837f438f66a6e039e673f880e2cb89

externalSecrets:
  enabled: true
  secretName: "scoutflow/dev/database"

backend:
  replicas: 1
```

---

## 🚀 Installation

<details>
<summary><b>📖 Installation Methods (Click to expand)</b></summary>

### Prerequisites

- Kubernetes 1.24+
- Helm 3.0+
- (For EKS) AWS Load Balancer Controller
- (For External Secrets) External Secrets Operator

### Method 1: Direct Helm Install

```bash
# Basic installation
helm upgrade --install scoutflow ./helm/scoutflow \
  --namespace scoutflow \
  --create-namespace

# With custom values
helm upgrade --install scoutflow ./helm/scoutflow \
  --namespace scoutflow \
  --create-namespace \
  --values custom-values.yaml

# With inline overrides
helm upgrade --install scoutflow ./helm/scoutflow \
  --namespace scoutflow \
  --set global.imageTag=abc123 \
  --set externalSecrets.enabled=true \
  --set externalSecrets.secretName=scoutflow/prod/database
```

### Method 2: GitOps with ArgoCD (Recommended)

**ArgoCD Application:**
```yaml
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: scoutflow-dev
spec:
  sources:
    - repoURL: https://github.com/omerbh7/scoutflow-app
      path: helm/scoutflow
      helm:
        valueFiles:
          - $values/environments/dev/values.yaml
    - repoURL: https://github.com/omerbh7/scoutflow-gitops
      ref: values
  destination:
    namespace: dev
  syncPolicy:
    automated:
      prune: true
      selfHeal: true
```

**Deployment Flow:**
1. ArgoCD watches both repositories
2. Pulls chart from scoutflow-app
3. Pulls values from scoutflow-gitops
4. Renders and deploys manifests
5. Auto-syncs on Git changes (dev/stage)

### Method 3: Template and Apply

```bash
# Generate manifests
helm template scoutflow ./helm/scoutflow \
  --namespace scoutflow \
  --values custom-values.yaml \
  > manifests.yaml

# Review and apply
kubectl apply -f manifests.yaml
```

</details>

---

## 🔐 Secret Management

<details>
<summary><b>📖 External Secrets Integration (Click to expand)</b></summary>

### Enabling External Secrets

```yaml
externalSecrets:
  enabled: true
  region: us-east-1
  secretName: "scoutflow/dev/database"
```

### Prerequisites

**1. External Secrets Operator:**
```bash
# Check if installed
kubectl get pods -n external-secrets-system

# Install if needed
helm repo add external-secrets https://charts.external-secrets.io
helm install external-secrets external-secrets/external-secrets \
  --namespace external-secrets-system \
  --create-namespace
```

**2. AWS Secret:**
```bash
aws secretsmanager create-secret \
  --name scoutflow/dev/database \
  --secret-string '{
    "DB_USER": "postgres",
    "DB_PASSWORD": "secure-password",
    "DB_NAME": "nba_stats"
  }' \
  --region us-east-1
```

**3. IAM Role (IRSA):**

Configured in `scoutflow-infra` Terraform. Service account must be annotated with IAM role ARN:

```yaml
annotations:
  eks.amazonaws.com/role-arn: arn:aws:iam::ACCOUNT_ID:role/ExternalSecretsRole
```

### How It Works

1. Chart creates ClusterSecretStore (AWS Secrets Manager backend)
2. Chart creates ExternalSecret (specifies which secret to sync)
3. External Secrets Operator authenticates via IRSA
4. ESO fetches secret from AWS
5. ESO creates Kubernetes Secret (`scoutflow-db-secret`)
6. Backend pods mount secret as environment variables
7. ESO refreshes every 1 hour (default)

### Verifying

```bash
# Check ClusterSecretStore
kubectl get clustersecretstore
kubectl describe clustersecretstore scoutflow-cluster-secret-store

# Check ExternalSecret
kubectl get externalsecret -n scoutflow
kubectl describe externalsecret scoutflow-db-secret -n scoutflow

# Check created secret
kubectl get secret scoutflow-db-secret -n scoutflow
```

### Troubleshooting

**SecretSyncedError:**
- Verify AWS secret exists
- Check IAM role permissions
- Verify service account annotation
- Check ESO logs: `kubectl logs -n external-secrets-system deployment/external-secrets`

</details>

---

## 🌍 Multi-Environment Deployment

<details>
<summary><b>📖 Environment Strategy (Click to expand)</b></summary>

### Environment Isolation

Each environment deployed to separate namespace with different configurations:

**Development:**
- **Purpose**: Rapid iteration, feature testing
- **Namespace**: `dev`
- **Replicas**: 1 per service
- **Resources**: Minimal (100m CPU, 128Mi memory)
- **Storage**: 10Gi
- **Secrets**: `scoutflow/dev/database`
- **Sync**: Automated

**Staging:**
- **Purpose**: QA validation, pre-production testing
- **Namespace**: `stage`
- **Replicas**: 2 per service (HA testing)
- **Resources**: Production-like (200m-1000m CPU, 256Mi-512Mi memory)
- **Storage**: 10Gi
- **Secrets**: `scoutflow/stage/database`
- **Sync**: Automated
- **Monitoring**: Enabled

**Production:**
- **Purpose**: Live user-facing workloads
- **Namespace**: `prod`
- **Replicas**: 3 per service (high availability)
- **Resources**: High limits (500m-2000m CPU, 512Mi-1Gi memory)
- **Storage**: 20Gi
- **Secrets**: `scoutflow/prod/database`
- **Sync**: Manual approval required
- **Monitoring**: Full observability with alerting

### Deployment Workflow

**Dev/Stage (Automatic):**
```
Code push → CI builds → GitOps update → ArgoCD sync → Deployed
```

**Production (Manual):**
```
1. Validate in staging
2. Update prod values in GitOps repo
3. ArgoCD shows "OutOfSync"
4. Review diff
5. Manual sync: argocd app sync scoutflow-prod
6. Rolling update
```

</details>

---

## 🔧 Advanced Configuration

<details>
<summary><b>📖 Advanced Features (Click to expand)</b></summary>

### Custom Storage Classes

**AWS EKS with gp3 (Recommended):**
```yaml
database:
  persistence:
    storageClass: "gp3"
```

**Custom Storage Class:**
```yaml
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: fast-ssd
provisioner: ebs.csi.aws.com
parameters:
  type: gp3
  iops: "3000"
  encrypted: "true"
```

### TLS/HTTPS Configuration

**Enable TLS:**
```yaml
ingress:
  tls:
    enabled: true
    secretName: scoutflow-tls-cert
```

**With Cert-Manager:**
```yaml
ingress:
  tls:
    enabled: true
    certManager:
      enabled: true
      issuer: letsencrypt-prod
```

### Custom Ingress Annotations

```yaml
ingress:
  annotations:
    alb.ingress.kubernetes.io/scheme: internet-facing
    alb.ingress.kubernetes.io/listen-ports: '[{"HTTP": 80}, {"HTTPS": 443}]'
    alb.ingress.kubernetes.io/ssl-redirect: '443'
    alb.ingress.kubernetes.io/certificate-arn: arn:aws:acm:...
```

### Database Backup Strategy

**Option 1: Velero (Cluster-wide)**
```bash
velero backup create scoutflow-backup --include-namespaces scoutflow
```

**Option 2: PostgreSQL pg_dump**
```bash
kubectl exec -it scoutflow-database-0 -n scoutflow -- \
  pg_dump -U postgres nba_stats > backup.sql
```

**Option 3: AWS RDS**
- Use external RDS instead of in-cluster PostgreSQL
- Automated backups with point-in-time recovery

</details>

---

## 🛡️ Security Best Practices

<details>
<summary><b>📖 Security Recommendations (Click to expand)</b></summary>

### Secret Management

✅ **DO:**
- Use External Secrets with AWS Secrets Manager
- Enable IRSA for keyless authentication
- Rotate secrets regularly
- Use different secrets per environment

❌ **DON'T:**
- Commit secrets to Git
- Use fallback secrets in production
- Share secrets across environments

### Network Security

✅ **DO:**
- Use NetworkPolicies for pod isolation
- Enable TLS for Ingress
- Use private subnets for pods
- Implement rate limiting

❌ **DON'T:**
- Expose database to internet
- Allow unrestricted pod communication

### Resource Management

✅ **DO:**
- Set resource requests and limits
- Use PodDisruptionBudgets for HA
- Implement health checks
- Monitor resource usage

❌ **DON'T:**
- Run without resource limits
- Deploy without health checks

### Image Security

✅ **DO:**
- Use specific image tags (commit SHAs)
- Scan images for vulnerabilities
- Use minimal base images
- Run as non-root

❌ **DON'T:**
- Use `latest` tag in production
- Pull from untrusted registries

</details>

---

## 📊 Monitoring and Observability

<details>
<summary><b>📖 Monitoring Integration (Click to expand)</b></summary>

### Prometheus Metrics

**Automatic Collection:**
- Pod CPU and memory usage
- Container restart counts
- Network traffic
- Persistent volume usage

**Custom Metrics (Backend):**

```python
from prometheus_client import Counter, Histogram

request_count = Counter('http_requests_total', 'Total requests')
request_duration = Histogram('http_request_duration_seconds', 'Duration')
```

**ServiceMonitor:**
```yaml
apiVersion: monitoring.coreos.com/v1
kind: ServiceMonitor
metadata:
  name: scoutflow-backend
spec:
  selector:
    matchLabels:
      app: scoutflow-backend
  endpoints:
    - port: http
      path: /metrics
```

### Grafana Dashboards

**Access:**
```bash
kubectl port-forward -n monitoring svc/kube-prometheus-stack-grafana 3000:80
# URL: http://localhost:3000
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

## 🧪 Testing and Validation

<details>
<summary><b>📖 Testing the Chart (Click to expand)</b></summary>

### Helm Lint

```bash
helm lint ./helm/scoutflow
```

### Template Rendering

```bash
# Render templates locally
helm template scoutflow ./helm/scoutflow > rendered.yaml
```

### Dry Run

```bash
helm install scoutflow ./helm/scoutflow \
  --namespace scoutflow \
  --dry-run \
  --debug
```

### Integration Testing

```bash
# Deploy to test namespace
kubectl create namespace scoutflow-test
helm install scoutflow-test ./helm/scoutflow \
  --namespace scoutflow-test \
  --set externalSecrets.enabled=false

# Wait for pods
kubectl wait --for=condition=ready pod \
  -l app.kubernetes.io/instance=scoutflow-test \
  -n scoutflow-test \
  --timeout=300s

# Cleanup
helm uninstall scoutflow-test -n scoutflow-test
kubectl delete namespace scoutflow-test
```

</details>

---

## 🔗 Integration with Other Repositories

### [scoutflow-app](https://github.com/omerbh7/scoutflow-app)

**Relationship:** This chart is located in `helm/scoutflow/` of the scoutflow-app repository.

**What Parent Provides:**
- Application source code
- Docker images (built by CI/CD)
- Helm chart templates (this chart)

---

### [scoutflow-gitops](https://github.com/omerbh7/scoutflow-gitops)

**What GitOps Provides:**
- ArgoCD Application manifests
- Environment-specific values (dev, stage, prod)
- Image tag management (commit SHAs)

**Multi-Source Configuration:**
- Source 1: Helm chart from scoutflow-app
- Source 2: Values from scoutflow-gitops

**Why Separate?**
- Separation of concerns (code vs. config)
- Different access controls
- Same chart, different values per environment

---

### [scoutflow-infra](https://github.com/omerbh7/scoutflow-infra)

**What Infrastructure Provides:**
- AWS EKS cluster
- External Secrets Operator
- AWS Load Balancer Controller
- AWS Secrets Manager secrets
- IAM roles (IRSA)
- Storage classes (gp3 EBS)
- Monitoring stack (Prometheus + Grafana)

**Dependencies:**
- EKS cluster must exist
- External Secrets Operator must be installed
- ALB Controller must be installed
- AWS Secrets must exist

---

## ⚠️ Important Notes

> [!WARNING]
> **Production Safety**
> - Never use fallback secrets in production
> - Always enable External Secrets for prod
> - Verify IAM roles before deployment

> [!IMPORTANT]
> **Storage Considerations**
> - Use `gp3` storage class for production
> - Database PVCs are not automatically deleted
> - Backup data before destroying StatefulSet

> [!NOTE]
> **Multi-Environment**
> - Same chart, different values per environment
> - Values managed in scoutflow-gitops repository
> - Production requires manual sync approval

---

## 📚 Additional Resources

- **Main Repository**: [scoutflow-app](https://github.com/omerbh7/scoutflow-app)
- **GitOps Repository**: [scoutflow-gitops](https://github.com/omerbh7/scoutflow-gitops)
- **Infrastructure Repository**: [scoutflow-infra](https://github.com/omerbh7/scoutflow-infra)
- **Helm Documentation**: https://helm.sh/docs/
- **External Secrets Operator**: https://external-secrets.io/
- **AWS Load Balancer Controller**: https://kubernetes-sigs.github.io/aws-load-balancer-controller/
