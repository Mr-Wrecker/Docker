# Docker

## Simple Docker Project

Docker Project For Cloud Computing Course

- One Redis Server
- One Flask Web Service For Read From Database
- One Flask Web Service For Write From Database

---

## How To Setup

### First Step: Pull Requirements Docker Image

```console
➜ sudo docker pull redis

➜ sudo docker pull tiangolo/uwsgi-nginx-flask
```

### Second Step: Run Config Files

#### Initial Docker Config

```console
➜ sudo bash Service/init.sh
```

#### Start Containers

#### Stop Containers

```console
➜ sudo bash Service/Stop-Containers.sh
```
