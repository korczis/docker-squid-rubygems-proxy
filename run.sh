#! /usr/bin/env bash

docker run --name squid -d --restart=always \
  --publish 3128:3128 \
  --volume /srv/docker/squid/cache:/var/spool/squid3 \
  korczis/docker-squid-rubygems-proxy:latest