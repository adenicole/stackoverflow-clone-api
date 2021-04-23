#!/bin/bash

set -x

RUNNING_API_CONTAINERS=$(sudo docker ps | grep stackoverflow-api | awk '{print $1}')
ALL_API_CONTAINERS=$(sudo docker ps -a | grep stackoverflow-api | awk '{print $1}')

# Stop and remove old containers
sudo docker stop "${RUNNING_API_CONTAINERS}"
sudo docker container rm "${ALL_API_CONTAINERS}"

# Build API app's image
sudo docker build -t adenicole/stackoverflow-api .

# Deploy the API app in a container and map exposed port to localhost:5000
sudo docker run -d -p 5000:5000 --network stackoverflow-net --name stackoverflow-api adenicole/stackoverflow-api
