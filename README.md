# argocd-demo

## Prerequisites
- Visual Studio Code version that can run dev containers
- Docker Desktop

## Install Argo
Open a terminal within vs code

1. Start the minikube cluster
```
minikube start
```
2. Create argocd namespace
```
kubectl create namespace argocd
```
3. Install argocd into the cluster
```
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```
4. Port forward the argocd UI to port 8080
```
kubectl port-forward svc/argocd-server -n argocd 8080:443
```
The API server can then be accessed using https://localhost:8080.
NOTE: This is a self signed cert, you will need to tell your browser to trust it.
5. Obtain the default password
```
argocd admin initial-password -n argocd
```
6. Login via the argocd CLI
```
argocd login https://localhost:8080
```
Username: admin
Password: <obtained in step 5>
7. Change the password if you'd like
```
argocd account update-password
``` 
8. Login to the UI!
```
User: admin
Password: <your_password>
```