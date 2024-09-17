#!/bin/bash

# Build Docker image dari Dockerfile untuk frontend dengan nama order-service
docker build -t ghcr.io/x-hozmi/a433-microservices/order-service:latest .

# Login ke GitHub Packages
echo $GITHUB_TOKEN | docker login ghcr.io -u x-hozmi --password-stdin

# Push Docker image ke GitHub Packages
docker push ghcr.io/x-hozmi/a433-microservices/order-service:latest
