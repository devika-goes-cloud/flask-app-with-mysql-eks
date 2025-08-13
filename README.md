# flask-app-with-mysql-eks

## 🛠 Tech Stack
- **Python (Flask)**
- **MySQL**
- **Docker**
- **Kubernetes**
- **AWS EKS**

---
```bash
## 🔧 Steps to Deploy

### 1️⃣ Build and Push Docker Image

docker build -t devika12345/flaskapp-mysql-project:v1 .
docker push devika12345/flaskapp-mysql-project:v1


### 2️⃣ Apply Kubernetes Manifests


kubectl apply -f mysql-configmap.yml -f mysql-secrets.yml -f mysql-deployment.yml -f mysql-svc.yml
kubectl apply -f two-tier-app-deployment.yml two-tier-app-svc.yml


### 3️⃣ Verify Deployment

kubectl get pods
kubectl get svc


### 4️⃣ Access Application

kubectl get svc two-tier-app-service
