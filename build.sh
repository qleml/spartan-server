#!/bin/bash

# Build the Docker image
docker build -t spartan-server:latest .

# Prune and delete untagged images
docker image prune -f