#!/bin/bash

echo $1
docker run -d --name=bind --dns=127.0.0.1 --publish=$1:53:53/udp --publish=$1:10000:10000 --volume=$PWD/data:/data --env='ROOT_PASSWORD=password' sameersbn/bind:latest

exit 0
