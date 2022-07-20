#!/usr/bin/bash

echo -e "\e[1;31m Initial Project Config in Progress...\033[0m\n"

# Chcke Redis Container
if docker images | grep redis
then
    echo -e "\e[1;31m Redis Container: Requirement Image Exist.\033[0m\n"
else
    echo -e "\e[1;31m Redis Container: Requirement Image Not Exist.\033[0m"
    echo -e "Please Run Blow Command:
    sudo docker pull redis\n"
    exit

fi

# Chech Flask Container
if docker images | grep tiangolo/uwsgi-nginx-flask
then
    echo -e "\e[1;31m Flask Container: Requirement Image Exist.\033[0m\n"
else
    echo -e "\e[1;31m Flask Container: Requirement Image Not Exist.\033[0m"
    echo -e "Please Run Blow Command:
    sudo docker pull tiangolo/uwsgi-nginx-flask\033[0m\n"
    exit

fi

# Check and Create Docker Network
if docker network ls | grep Flask-Network
then
    echo -e "\e[1;31m Requirement Network Exist.\033[0m\n"
else
    docker network create Flask-Network &&
    echo -e "\e[1;31m Requirement Network Created.\033[0m\n"
fi

# Remove and Build Read-Server Container
if docker images | grep read-server
then
    echo -e "\e[1;31m Read-Server Container: Older Image Found\033[0m"
    echo -e "\e[1;31m Read-Server Container: Remove Older Image\033[0m"
    docker rmi read-server
    echo -e "\e[1;31m Read-Server Container: Remove Image Complete.\033[0m\n"
    echo -e "\e[1;31m Read-Server Container: Building DockerFile\033[0m"
    sudo docker build -f Service/DockerFile/ReadServer -t read-server:latest . &&
    echo -e "\e[1;31m Read-Server Container: Build Complete.\033[0m"
else
    echo -e "\e[1;31m Read-Server Container: Building DockerFile\033[0m"
    sudo docker build -f Service/DockerFile/ReadServer -t read-server:latest . &&
    echo -e "\e[1;31m Read-Server Container: Build Complete.\033[0m"

fi

# Remove and Build Write-Server Container
if docker images | grep write-server
then
    echo -e "\e[1;31m Write-Server Container: Older Image Found\033[0m"
    echo -e "\e[1;31m Write-Server Container: Remove Older Image\033[0m"
    docker rmi write-server
    echo -e "\e[1;31m Write-Server Container: Remove Image Complete.\033[0m\n"
    echo -e "\e[1;31m Write-Server Container: Building DockerFile\033[0m"
    sudo docker build -f Service/DockerFile/WriteServer -t write-server:latest . &&
    echo -e "\e[1;31m Write-Server Container: Build Complete.\033[0m"
else
    echo -e "\e[1;31m Write-Server Container: Building DockerFile\033[0m"
    sudo docker build -f Service/DockerFile/WriteServer -t write-server:latest . &&
    echo -e "\e[1;31m Write-Server Container: Build Complete.\033[0m"

fi