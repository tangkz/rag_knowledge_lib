#!/bin/bash

echo "Git update the local code ..."
git pull

echo "Turn down the docker containers ..."
sudo docker compose down

echo "Remove knowledge library ragflow image ..."
sudo docker rmi infiniflow/ragflow1:dev

echo "Building the knowledge library ragflow image..."
sudo docker compose -f ragkl-docker-compose.yml build ragflow

echo "Turn on the docker containers ..."
sudo docker compose -f ragkl-docker-compose.yml up -d

echo "Containers started successfully."
