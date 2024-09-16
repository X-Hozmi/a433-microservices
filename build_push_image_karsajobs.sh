#!/bin/bash

# Build Docker image dari Dockerfile untuk backend dengan nama karsajobs
docker build -t ghcr.io/x-hozmi/a433-microservices/karsajobs:latest .

# Login ke GitHub Packages
echo $GITHUB_TOKEN | docker login ghcr.io -u x-hozmi --password-stdin

# Push Docker image ke GitHub Packages
docker push ghcr.io/x-hozmi/a433-microservices/karsajobs:latest
