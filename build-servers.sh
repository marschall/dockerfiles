#!/bin/bash

./build-tomcat-8.sh && \
./build-tomcat-9.sh && \
./build-tomee-1.sh && \
./build-tomee-7.sh && \
./build-resin-4.sh && \
./build-geronimo.sh && \
./build-glassfish-4.sh && \
./build-glassfish-5.sh && \
./build-payara-4.sh && \
./build-jetty-9.sh && \
./build-wildfly-10.sh && \
./build-wildfly-11.sh && \
./build-dagger-example.sh

