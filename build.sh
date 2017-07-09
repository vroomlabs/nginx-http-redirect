#!/usr/bin/env bash

docker stop tdalabs/nginx-http-redirect:latest
docker rm tdalabs/nginx-http-redirect:latest
docker rmi tdalabs/nginx-http-redirect:latest

docker build -t tdalabs/nginx-http-redirect:latest .

#docker run --name=nginx-http-redirect:latest -v -p 30080:30080 \
#	tdalabs/nginx-http-redirect:latest --http_port 30080

#	-it --entrypoint /bin/bash tdalabs/nginx-http-redirect:latest
