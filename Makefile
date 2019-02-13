docker-registry:
	docker run -d -p 5000:5000 --restart=always --name registry registry:2

build:
	docker-compose build --no-cache

up:
	docker-compose up -d

up-verbose:
	docker-compose up

down:
	docker-compose down

ps:
	docker-compose ps
