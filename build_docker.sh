#!/bin/bash
# Call this script to build docker image. Argument is tag (name).
docker build --rm -t $1 .
