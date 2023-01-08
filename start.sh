#!/bin/bash

docker kill tools_getbestfree
docker rm tools_getbestfree

docker run \
  --name tools_getbestfree \
  -d --rm \
  --volume="$PWD:/srv/jekyll:Z" \
  --log-driver=journald \
  --publish 4000:4000 \
  jekyll/jekyll:3 \
  jekyll serve

trap 'echo "Exiting application"; docker kill tools_getbestfree; exit;' SIGINT

journalctl CONTAINER_NAME=tools_getbestfree -f
