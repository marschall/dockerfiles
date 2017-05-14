#!/bin/bash

TOMEE_VERSION=1.7.4
TOMEE_PROFILE=webprofile


if [ ! -f "apache-tomee/1/apache-tomee-${TOMEE_VERSION}-${TOMEE_PROFILE}.tar.gz" ]
  then
    curl -LO "http://repo.maven.apache.org/maven2/org/apache/openejb/apache-tomee/${TOMEE_VERSION}/apache-tomee-${TOMEE_VERSION}-${TOMEE_PROFILE}.tar.gz"
    mv "apache-tomee-${TOMEE_VERSION}-${TOMEE_PROFILE}.tar.gz" apache-tomee/1
fi

docker build -t marschall/apache-tomee:1 --rm apache-tomee/1

