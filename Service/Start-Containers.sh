#!/usr/bin/bash

# Run Redis
echo -e "\e[1;31m Runing Redis Server...\033[0m"
docker run --rm --name Redis -v /tmp/data/redis:/data --network Flask-Network -d redis redis-server --appendonly yes


# Run Read Web Service
echo -e "\n\e[1;31m Runing Read Server...\033[0m"
docker run --rm --name RServer --network Flask-Network -p8000:80 -d read-server


# Run Write Web Service
echo -e "\n\e[1;31m Runing Write Server...\033[0m"
docker run --rm --name WServer --network Flask-Network -p8080:80 -d write-server

echo -e "\n\e[1;31m Start Containers Complete.\033[0m"