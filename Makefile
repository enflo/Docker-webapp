init:
	docker service create --name registry --publish published=5000,target=5000 registry:2

build:
	docker-compose build -f docker-compose.yml docker-compose.dev.yml --no-cache

up:
	docker-compose up -f docker-compose.yml docker-compose.dev.yml -d

up-verbose:
	docker-compose up -f docker-compose.yml docker-compose.dev.yml

down:
	docker-compose down

ps:
	docker-compose ps
