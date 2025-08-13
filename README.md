# flask-app-with-mysql-eks

## 🛠 Tech Stack
- **Python (Flask)**
- **MySQL**
- **Docker**
- **Kubernetes**
- **AWS EKS**
---

## 1️⃣ Build and Push Docker Image

docker build -t devika12345/flaskapp-mysql-project:v1 .

docker push devika12345/flaskapp-mysql-project:v1

## 2️⃣ Apply Kubernetes Manifests

kubectl apply -f mysql-configmap.yml -f mysql-secrets.yml -f mysql-deployment.yml -f mysql-svc.yml

kubectl apply -f two-tier-app-deployment.yml two-tier-app-svc.yml


## 3️⃣ Verify Deployment

kubectl get pods
<br>
kubectl get svc


## 4️⃣ Access Application

kubectl get svc two-tier-app-service


- Copy the External IP

- Paste it in your browser to access the app. ✅

<img width="1793" height="961" alt="Flask-mysql-project" src="https://github.com/user-attachments/assets/ca099315-794a-46e2-b6ca-8905bbed0b5b" />



## 📸 EKS Cluster Creation
<img width="1497" height="966" alt="cluster_create_flask" src="https://github.com/user-attachments/assets/00255af3-3bdf-43e9-b439-0745a61cdc08" />


## Pod Deployment Verification
<img width="1517" height="566" alt="get all " src="https://github.com/user-attachments/assets/2cd9f712-6df5-41c4-b0c3-c2d7dfb52db9" />


## EKS Cluster deletion
<img width="1530" height="517" alt="cluster_del_flask" src="https://github.com/user-attachments/assets/096ec796-826d-43da-a620-a7915273a0f4" />


