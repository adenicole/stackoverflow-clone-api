#!/bin/bash

set -x

RUNNING_API_CONTAINERS=$(docker ps | grep stackoverflow-api | awk '{print $1}')
ALL_API_CONTAINERS=$(docker ps -a | grep stackoverflow-api | awk '{print $1}')

# Stop and remove old containers
docker stop "${RUNNING_API_CONTAINERS}"
docker container rm "${ALL_API_CONTAINERS}"

# Build API app's image
docker build -t adenicole/stackoverflow-api .

# Deploy the API app in a container and map exposed port to localhost:5000
docker run -d -p 5000:5000 --network stackoverflow-net --name stackoverflow-api adenicole/stackoverflow-api
