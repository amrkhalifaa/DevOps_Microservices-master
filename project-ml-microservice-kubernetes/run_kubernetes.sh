#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>

# Step 2
# Run the Docker Hub container with kubernetes


# Step 3:
# List kubernetes pods

# Step 4:
# Forward the container port to a host

#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub


dockerpath="fahmykhalilm/ml_project"

kubectl create deployment ml-app --image=$dockerpath:ml-app --port=80

kubectl get deployment
kubectl get pods

kubectl expose deployment ml-app --port=80 --target-port=80
kubectl port-forward deployment/ml-app 8000:80