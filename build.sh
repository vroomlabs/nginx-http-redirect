#!/usr/bin/env bash

docker stop nginx-http-redirect
docker rm nginx-http-redirect
docker rmi tdalabs/nginx-http-redirect:latest

docker build -t tdalabs/nginx-http-redirect:latest .

#docker run --name=nginx-http-redirect -p 30080:30080 \
#	tdalabs/nginx-http-redirect:latest --http_port 30080 -N 8100

#	-it --entrypoint /bin/bash tdalabs/nginx-http-redirect:latest
