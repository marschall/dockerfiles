#!/bin/bash

# docker run -d -v /opt/apache-tomcat/logs --name dagger-example-logdata scratch echo Data-only container for Tomcat logs
docker run -d -v /opt/apache-tomcat/logs --name dagger-example-logdata busybox true