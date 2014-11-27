#!/bin/bash

if [ $# -ne 1 ]
  then
    echo "Usage $0 <dockerid>"
    exit 1
fi

docker exec $1 /opt/apache-tomcat/bin/catalina.sh stop
docker rm $1
