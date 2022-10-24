#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="amrkhalifaa95/ml_project"
# dockerpath=<>

# Step 2
kubectl create deployment ml-app --image=$dockerpath:ml-app --port=80

# Step 3:
kubectl get deployment
kubectl get pods

# Step 4:
kubectl expose deployment ml-app --port=80 --target-port=80
kubectl port-forward deployment/ml-app 8080:80

