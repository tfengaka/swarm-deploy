#!make

PROJECT=swarm

network:
	docker network create --driver=overlay --attachable traefik-public
deploy:
	docker stack deploy -c docker-compose.yaml ${PROJECT}
down:
	docker stack rm ${PROJECT}
%:
	@echo "Done"