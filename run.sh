#!/bin/bash

echo "Building and running python docker image..."
docker-compose up --build -d # -d run containers in background
