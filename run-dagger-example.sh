#!/bin/bash

mkdir -p dagger-example/logs

# docker run -d -p 8080:8080 -p 8081:8081 -v `pwd`/dagger-example/logs:/opt/apache-tomcat/logs --env-file=dagger.env marschall/dagger-example
docker run -ti --rm -p 8080:8080 -p 8081:8081 -v `pwd`/dagger-example/logs:/opt/apache-tomcat/logs --env-file=dagger.env marschall/dagger-example

