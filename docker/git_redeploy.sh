#!/bin/bash

echo "Git update the local code ..."
git pull

echo "Turn down the docker containers ..."
sudo docker compose down

#echo "Remove knowledge library ragflow image ..."
sudo docker rmi infiniflow/ragflow:dev-slim

echo "Building the knowledge library ragflow image..."
#sudo docker compose -f ragkl-docker-compose.yml build ragflow
cd ..
source ./venv/bin/activate
sudo docker build -f Dockerfile.slim -t infiniflow/ragflow:dev-slim .
deactivate
cd docker

echo "Turn on the docker containers ..."
#sudo docker compose -f ragkl-docker-compose.yml up -d
sudo docker compose -f docker-compose.yml up -d

echo "Containers started successfully."
