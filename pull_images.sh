#!/bin/bash
# Workaround due to native pull in Docker Compose
# fails on headless systems, due to X11/D-Bus dependency.
docker-compose \
	-f docker-compose.yml \
	-f docker-compose-homeassistant.yml \
       	-f deconz/docker-compose.yml \
	-f zwavejs/docker-compose.yml \
       	--env-file=.env config \
       	| grep image \
	| sed -e 's/image://' \
       	| xargs -n1 docker pull
