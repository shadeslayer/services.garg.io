#!/usr/bin/env bash

_SERVICES="services/*.yml"
export COMPOSE_FILE=$(echo $_SERVICES | sed 's,\ ,:,g')
docker-compose --env-file .env config
