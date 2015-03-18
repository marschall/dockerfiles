#!/bin/bash

# docker run -ti --rm -p 8080:8080 marschall/jdt-availability-check-tomcat
docker run -ti --rm -p 8080:8080 marschall/jdt-availability-check-tomcat /opt/apache-tomcat/bin/catalina.sh run

