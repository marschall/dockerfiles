#!/bin/bash

TOMEE_VERSION=7.0.2
TOMEE_PROFILE=webprofile

if [ ! -f "apache-tomee/7/apache-tomee-${TOMEE_VERSION}-${TOMEE_PROFILE}.tar.gz" ]
  then
    curl -LO "https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/${TOMEE_VERSION}/apache-tomee-${TOMEE_VERSION}-${TOMEE_PROFILE}.tar.gz"
    mv "apache-tomee-${TOMEE_VERSION}-${TOMEE_PROFILE}.tar.gz" apache-tomee/7
fi

docker build -t marschall/apache-tomee:7 --rm apache-tomee/7

