#!/bin/bash

docker run -d \
  -p 2181:2181 -p 9092:9092 \
  --env ADVERTISED_HOST=`docker-machine ip \`docker-machine active\`` \
  --env ADVERTISED_PORT=9092 --name kafka flozano/kafka:0.9.0.0
