DC		=	docker compose

DCF		=	./srcs/docker-compose.yml

.PHONY: build up start down destroy stop restart logs ps fclean

up:
	@mkdir -p $(HOME)/data/wordpress && mkdir -p $(HOME)/data/mariadb
	@$(DC) -f $(DCF) up -d

build:
	@$(DC) -f $(DCF) build

re: destroy
	@mkdir -p $(HOME)/data/wordpress && mkdir -p $(HOME)/data/mariadb
	@$(DC) -f $(DCF) up --build -d

start:
	@$(DC) -f $(DCF) start

down:
	@$(DC) -f $(DCF) down

destroy: down
	@$(DC) -f $(DCF) down -v

stop:
	@$(DC) -f $(DCF) stop

restart: stop up

log:
	@$(DC) -f $(DCF) logs

ps:
	@$(DC) -f $(DCF) ps

fclean: destroy
	@sudo rm -fr $(HOME)/data
	docker system prune -af



