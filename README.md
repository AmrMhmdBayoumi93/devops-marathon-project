# 🚀 DevOps Marathon Project

Deploy a Containerized Web Application on AWS using Terraform, Docker, Kubernetes (Minikube), and GitHub Actions.

---

## 📖 Project Overview

This project demonstrates a complete DevOps workflow by provisioning AWS infrastructure with Terraform, containerizing a Node.js application using Docker, deploying it to Kubernetes (Minikube), and automating Docker image builds with GitHub Actions.

---

## 🛠 Technologies Used

- AWS EC2
- Terraform
- Docker
- Docker Hub
- Kubernetes
- Minikube
- kubectl
- GitHub Actions
- Node.js
- Express.js

---

## 📁 Project Structure

```text
devops-marathon-project
│
├── .github/
│   └── workflows/
│       └── ci.yml
│
├── app/
│   ├── Dockerfile
│   ├── package.json
│   ├── package-lock.json
│   ├── app.js
│   └── public/
│
├── kubernetes/
│   ├── deployment.yaml
│   └── service.yaml
│
├── terraform/
│   ├── provider.tf
│   ├── variables.tf
│   ├── vpc.tf
│   ├── security.tf
│   ├── ec2.tf
│   ├── outputs.tf
│   └── userdata.sh
│
└── README.md
```

---

## 🏗 Architecture

```
GitHub
   │
   ▼
GitHub Actions
   │
   ▼
Docker Hub
   │
   ▼
Kubernetes (Minikube)
   │
   ▼
Node.js Application

Infrastructure hosted on AWS EC2 provisioned by Terraform.
```

---

## ⚙️ Infrastructure Deployment

```bash
cd terraform

terraform init

terraform plan

terraform apply
```

---

## 🐳 Docker

Build Image

```bash
docker build -t hello-devops ./app
```

Run

```bash
docker run -p 3000:3000 hello-devops
```

Push

```bash
docker tag hello-devops amrmhmd93/hello-devops:latest

docker push amrmhmd93/hello-devops:latest
```

---

## ☸ Kubernetes

Start Minikube

```bash
minikube start --driver=docker
```

Deploy

```bash
kubectl apply -f kubernetes/deployment.yaml

kubectl apply -f kubernetes/service.yaml
```

Verify

```bash
kubectl get deployments

kubectl get pods

kubectl get svc
```

Open Application

```bash
minikube service hello-devops-service
```

---

## 🔄 GitHub Actions CI/CD

The workflow automatically:

- Checks out the repository
- Logs into Docker Hub
- Builds the Docker image
- Pushes the image to Docker Hub

---

## 📷 Screenshots

Add screenshots of:

- Terraform Apply
- AWS EC2 Instance
- Docker Image on Docker Hub
- kubectl get pods
- kubectl get svc
- Running Application
- Successful GitHub Actions Workflow

---

## 🧹 Cleanup

```bash
terraform destroy

minikube stop

minikube delete
```

---

## 👨‍💻 Author

**Amr Mohamed Bayoumi**

- GitHub: https://github.com/AmrMhmdBayoumi93
- Docker Hub: https://hub.docker.com/u/amrmhmd93
- Linked in :https://www.linkedin.com/in/amr-muhammad-bayoumi-193b1535a/