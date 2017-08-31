#!/bin/bash
# Runs the "hugo" command, with whatever arguments are passed.
docker run --rm -i --user="$(id -u):$(id -g)" -v $PWD:/site docker_hugo hugo "$@"