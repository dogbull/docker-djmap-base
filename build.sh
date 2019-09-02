#!/usr/bin/env bash

set -e

docker build -t epinet/djmap-base .
docker push epinet/djmap-base
