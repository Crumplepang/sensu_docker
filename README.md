# sensu_docker

Simple Sensu stack on Redis using docker compose

## Setup

    apt install docker-compose

## Configure

files/api, files/server and files/client are mounted as /etc/sensu/conf.d in their respective containers.

## Build

    docker build -f Dockerfiles/redis -t=sensu/redis .
    docker build -f Dockerfiles/base -t=sensu/base .

## Run

    ./cleanup.sh
    docker-compose up --build -d

## Check

    redis-cli -h localhost -p 6379 <<<'keys *'

    curl -s localhost:4567/clients | jq

..and browse http://localhost:3000

## Clean up

    ./cleanup.sh

