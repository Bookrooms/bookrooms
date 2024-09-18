#!/bin/bash

source .env

if [ "$DEVEL" -eq 1 ]; then
    docker-compose -f docker-compose.yml -f docker-compose.dev.yml up --build
else
    docker-compose -f docker-compose.yml up --build
fi
