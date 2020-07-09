#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=aramirezg/ml-app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run app-ml --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/app-ml 8000:80