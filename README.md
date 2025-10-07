# DevOps Internship Assessment: Containerize and Deploy a Next.js Application

## Objective
This project demonstrates the containerization of a Next.js application, automated build and push to GitHub Container Registry (GHCR) via GitHub Actions, and deployment on Minikube using Kubernetes manifests.

---

## Quick Overview
1. Local Next.js app (`devops-nextjs-app/`)  
2. Dockerfile and .dockerignore  
3. Kubernetes manifests (`k8s/` folder: deployment.yaml & service.yaml)  
4. GitHub Actions workflow (`.github/workflows/ghcrbuild.yml`)  
5. Screenshots documenting the process  

---

## Step 1: Create Next.js App

- Created the project using `npx create-next-app@latest`  
- Tested locally on [http://localhost:3000](http://localhost:3000)  

![Next.js app starting](screenshots/nextappstarting.png)  
![Starting app](screenshots/startingapp.png)  
![Accessing localhost](screenshots/accessinglocalhost.png)  
![App inaccessible after stopping dev server](screenshots/notaccessingwhilestopping.png)  

---

## Step 2: Dockerize the Application

- Created `.dockerignore` and `Dockerfile` for containerization  
- Built Docker image and ran locally  
- Verified container and app accessibility  

![Dockerfile](screenshots/dockerfile.png)  
![Docker build](screenshots/dockerbuild.png)  
![Starting app with Docker](screenshots/startingappwithdocker.png)  
![Accessing via Docker](screenshots/accesswithdocker.png)  
![Locally created container](screenshots/locallycreatedcontainer.png)  

---

## Step 3: GitHub Repository

- Created public GitHub repo: `devops-nextjs-app`  
- Pushed initial Next.js app, Dockerfile, and Kubernetes manifests  

![GitHub repo creating](screenshots/gitrepocreating.png)  
![GitHub repo files](screenshots/gitrepo.png)  

---

## Step 4: GHCR Personal Access Token (PAT)

- Created PAT for pushing images to GHCR  
- Added secret `CR_PAT` to GitHub repository  

![Creating PAT](screenshots/creatingpat.png)  
![Creating secrets](screenshots/creatingscerets.png)  

---

## Step 5: GitHub Actions Workflow

- Configured workflow to build Docker image and push to GHCR  
- Verified workflow run and GHCR image creation  

![Creating workflow](screenshots/creatingworkflow.png)  
![GHCR build](screenshots/ghcrbuild.png)  
![GHCR image](screenshots/ghcrimage.png)  

---

## Step 6: Kubernetes Manifests

- Created `k8s/deployment.yaml` and `k8s/service.yaml`  
- Deployment includes replicas, health checks, and resource limits  

![Deployment file](screenshots/deploymentfile.png)  
![Service file](screenshots/servicefile.png)  
![K8s manifests pushed to GitHub](screenshots/k8sfilespushtorigin.png)  

---

## Step 7: Deploy to Minikube

- Started Minikube using Docker driver  
- Applied Kubernetes manifests  
- Verified pods and services  

![Starting Minikube](screenshots/startingminikube.png)  
![Pods and Services](screenshots/podsandservices.png)  
![Minikube console](screenshots/minikubecon.png)  
![Accessing with K8s deployment](screenshots/accessingwithk8sdeploy.png)  
![Service URL](screenshots/statingwithservice.png)  

---

## Step 8: Cleanup

- Stopped and removed all local Docker containers/images and terminated Minikube  

![Completion of job](screenshots/completionofjob.png)  
![Terminating Minikube](screenshots/terminatingminikube.png)  
![Stopped Docker build](screenshots/whilestoppingdockerbuild.png)  

---

## Conclusion

This project successfully:

- Containerized a Next.js app with Docker  
- Automated builds and pushes to GHCR using GitHub Actions  
- Deployed the containerized app to Minikube using Kubernetes manifests  

It demonstrates a **complete CI/CD workflow** integrating local development, containerization, automation, and Kubernetes deployment.
