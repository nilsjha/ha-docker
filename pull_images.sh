#!/bin/bash
# Workaround due to native pull in Docker Compose
# fails on headless systems, due to X11/D-Bus dependency.
docker-compose \
	-f compose.yml \
	-f compose-ha.yml \
       	-f compose-deconz.yml \
	-f compose-zwavejs.yml \
       	--env-file=.env config \
       	| grep image \
	| sed -e 's/image://' \
       	| xargs -n1 docker pull
