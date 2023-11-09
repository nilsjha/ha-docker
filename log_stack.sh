#!/bin/bash
docker-compose \
	-f compose.yml \
	-f compose-ha.yml \
  	-f compose-deconz.yml \
	-f compose-zwavejs.yml \
	-f compose-esphome.yml \
  --env-file=.env logs  -f 
