#!/bin/bash
docker-compose \
	-f compose.yml \
	-f compose-ha.yml \
  	-f compose-deconz.yml \
	-f compose-zwavejs.yml \
	--env-file=.env up \
	zwavejs2mqtt deconz \
	-d

sleep 5

docker-compose \
	-f compose.yml \
	-f compose-ha.yml \
  	-f compose-deconz.yml \
	-f compose-zwavejs.yml \
	--env-file=.env up \
	homeassistant \
	-d

sleep 10

docker-compose \
	-f compose.yml \
	-f compose-ha.yml \
	-f compose-deconz.yml \
	-f compose-zwavejs.yml \
	--env-file=.env up \
	esphome \
	-d
