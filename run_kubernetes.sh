#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=robinhalfbloodprince/mlpredict

# Step 2
# Run the Docker Hub container with kubernetes
#minikube kubectl run mlpredict --image=$dockerpath --port=80
kubectl run mlpredict --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
#minikube kubectl port-forward mlpredict 8080:80
kubectl port-forward mlpredict 8080:80

# Log pod name
minikube kubectl logs `minikube kubectl get pods -o=name`
