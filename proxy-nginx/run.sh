#!/bin/bash

## Build
docker build -t web1 ./web1
docker build -t web2 ./web2
docker build -t proxy ./proxy

## Run
docker network create -d bridge tamires.asa.br
docker run -d --net=tamires.asa.br --name web1 web1
docker run -d --net=tamires.asa.br --name web2 web2
docker run -dp 80:80 --net=tamires.asa.br --name proxy proxy