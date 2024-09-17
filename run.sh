#!/usr/bin/env sh

docker run --rm -it -v $PWD:/slides -w /slides -p 10000:10000 reveal-ck
