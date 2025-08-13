# flask-app-with-mysql-eks

🛠 Tech Stack
Python (Flask)

MySQL

Docker

Kubernetes

AWS EKS


🔧 Steps to Deploy
Build and Push Docker Image


docker build -t devika12345/flaskapp-mysql-project:v1 .
docker push devika12345/flaskapp-mysql-project:v1


Apply Kubernetes Manifests

kubectl apply -f mysql-configmap.yml -f mysql-secrets.yml -f mysql-deployment.yml -f mysql-svc.yml
kubectl apply -f two-tier-app-deployment.yml two-tier-app-svc.yml
