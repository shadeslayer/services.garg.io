#!/usr/bin/env bash

if [ ! -e .env ]; then
    echo "No environment configured!"
fi

_SERVICES="services/*.yml"
export COMPOSE_FILE=$(echo $_SERVICES | sed 's,\ ,:,g')
docker-compose --env-file $PWD/.env config &> docker-compose.yml
