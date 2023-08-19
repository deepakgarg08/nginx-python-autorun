#!/bin/bash

echo "1/2..."
docker build -t nginx-gunicorn-python-docker .
echo "2/2..."
docker-compose up --build
