#!/bin/sh

if [ ! -f ./.production.env ]; then
    echo "Production .env file not found!"
    exit;
fi

docker pull realkhoa/pizza_ordering_backend:latest

docker-compose -f ./docker-compose.production.yml down
docker-compose -f ./docker-compose.production.yml up -d