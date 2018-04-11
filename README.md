# sensu_docker

Simple Sensu stack on Redis using docker compose

## Setup

    apt install docker-compose

## Configure

Place checks into files/checks/client or files/checks/server

## Build

    docker build -f Dockerfiles/redis -t=sensu/redis .
    docker build -f Dockerfiles/base -t=sensu/base .

## Run

    docker-compose up --build -d

## Check

    redis-cli -h localhost -p 6379 <<<'keys *'

    curl -s localhost:4567/clients | jq

## Clean up

    ./cleanup.sh

