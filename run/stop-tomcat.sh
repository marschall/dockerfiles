#!/bin/bash

if [ $# -ne 1 ]
  then
    echo "Usage $0 CONTAINER"
    exit 1
fi

docker exec -ti $1 /opt/apache-tomcat/bin/catalina.sh stop
sleep 1
docker rm $1
