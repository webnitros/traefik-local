install:
	@make build
	@make up
up:
	docker compose up -d
build:
	docker compose build
remake:
	@make down
	@make install
stop:
	docker compose stop
down:
	docker compose down --remove-orphans
restart:
	@make down
	@make up
destroy:
	docker compose down --volumes --remove-orphans
destroy-all:
	docker compose down --rmi all --volumes --remove-orphans
ps:
	docker compose ps
logs:
	docker compose logs

create-network:
	docker network create --attachable tc-net
