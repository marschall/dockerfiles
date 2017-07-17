#!/bin/bash

mkdir jdk10

docker run -ti --rm -v `pwd -P`/jdk10:/jdk marschall/build-openjdk:10

