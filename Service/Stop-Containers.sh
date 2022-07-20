#!/usr/bin/bash

# Stop Redis
docker rm --force Redis
echo -e "\e[1;31m Redis server Stoped.\033[0m\n"

# Stop Read Web Service
docker rm --force RServer
echo -e "\e[1;31m Read Web Service Stoped.\033[0m\n"

# Stop Write Web Service
docker rm --force WServer
echo -e "\e[1;31m Write Web Service Stoped.\033[0m\n"

echo -e "\n\e[1;31m Stop Container Complete.\033[0m"