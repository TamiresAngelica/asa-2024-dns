#!/bin/bash

##Build
docker build -t bind9 .

##Run
docker run -d --name c_binder9  -p 53:53/tcp -p 53:53/udp bind9  
