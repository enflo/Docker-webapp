# Docker webapp

This is a case of php web application with nginx and mysql. It also contains a Jenkins job and a Filebeat container to send the logs to ELK-stack.

## Requirementes

1. Docker
2. Docker-compose
3. Docker swarm

## Directory Structure

```
.
├── Code
│   └── public
│       └── index.php
├── Deploy
│   ├── Docker
│   │   ├── beats
│   │   │   ├── Dockerfile
│   │   │   ├── docker.yml
│   │   │   ├── filebeat.yml
│   │   │   └── prospectors.d
│   │   └── web
│   │       ├── nginx
│   │       │   ├── Dockerfile
│   │       │   ├── nginx.conf
│   │       │   └── site.conf
│   │       └── php
│   │           ├── Dockerfile
│   │           └── php.ini
│   └── Jenkins
│       ├── common_secrets.txt
│       ├── docker-compose.prod.yml
│       └── Jenkinsfile
├── docker-compose.override.yml
├── docker-compose.yml
├── DOCS
│   └── ResponseAnswers.md
├── logs
│   ├── mysql
│   └── nginx
│       ├── access.log
│       └── error.log
├── Makefile
├── README.md
└── Trivago-study-case.jpg
```

## Architecture

![alt text](infrastructure.jpg)

## Documentation

* [Document](DOCS/Document.md)
* [ResponseAnswers](DOCS/ResponseAnswers.md)

## Development

### Execute into development environment

Use make file for develope into development environment or use docker-compose

```
make up
```

or

```
make up-verbose
```

or

```
docker-compose up -f docker-compose.yml -f docker-compose.dev.yml
```
