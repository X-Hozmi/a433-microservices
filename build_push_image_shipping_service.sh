#!/bin/bash

# Build Docker image dari Dockerfile untuk frontend dengan nama shipping-service
docker build -t ghcr.io/x-hozmi/a433-microservices/shipping-service:latest .

# Login ke GitHub Packages
echo $GITHUB_TOKEN | docker login ghcr.io -u x-hozmi --password-stdin

# Push Docker image ke GitHub Packages
docker push ghcr.io/x-hozmi/a433-microservices/shipping-service:latest
