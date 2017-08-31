#!/bin/bash
# Runs the "hugo" command, with whatever arguments are passed.
# For "server", make sure to add --bind "0.0.0.0".
docker run --rm -it --user="$(id -u):$(id -g)" -p 1313:1313 -v $PWD:/site docker_hugo hugo "$@"