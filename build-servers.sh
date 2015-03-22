#!/bin/bash

./build-tomcat.sh && \
./build-tomee.sh && \
./build-resin.sh && \
./build-geronimo.sh && \
./build-glassfish.sh && \
./build-jetty.sh && \
./build-wildfly.sh && \
./build-dagger-example.sh

