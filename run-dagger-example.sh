#!/bin/bash

# docker run -ti --rm -p 8080:8080 -p 8081:8081 -v `pwd`/dagger-example/logs:/opt/apache-tomcat/logs marschall/dagger-example
docker run -d -p 8080:8080 -p 8081:8081 -v `pwd`/dagger-example/logs:/opt/apache-tomcat/logs marschall/dagger-example

