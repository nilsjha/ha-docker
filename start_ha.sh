#!/bin/bash
docker-compose \
	-f docker-compose.yml \
	-f docker-compose-homeassistant.yml \
       	-f deconz/docker-compose.yml \
	-f zwavejs/docker-compose.yml \
       	--env-file=.env \
	up -d \
	homeassistant 
