#!make

PROJECT=demo

network:
	sudo docker network create --driver overlay --subnet=10.0.10.0/24 traefik-public
deploy:
	sudo docker stack deploy -c docker-compose.yaml ${PROJECT}
down:
	sudo docker stack rm ${PROJECT}
%:
	@echo "Done"