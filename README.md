# Docker

## Simple Docker Project

Docker Project For Cloud Computing Course

- One Redis Server
- One Flask Web Service For Read From Database
- One Flask Web Service For Write From Database

---

## How To Setup

#### Get Project

```console
➜ git clone https://github.com/Mr-Wrecker/Docker.git

➜ cd Docker
```

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

```console
➜ sudo bash Service/Start-Containers.sh
```

#### Stop Containers

```console
➜ sudo bash Service/Stop-Containers.sh
```

---

## Usage

### For Read Data From Redis Database

#### Read Service Listen on 8000 Port

```console
➜ curl localhost:8000
```

### For Write Data To Redis Database

#### Write Service Listen on 8080 Port

```console
➜ curl "localhost:8080?name=Your_Name"
```
