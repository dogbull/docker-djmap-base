#!/usr/bin/env bash

set -e

docker build -t dr.epinet.kr/djmap-base .
docker push dr.epinet.kr/djmap-base

