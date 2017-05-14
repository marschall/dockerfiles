#!/bin/bash
set -e

TOMCAT_VERSION_MAJOR=9
TOMCAT_VERSION=9.0.0.M21

if [ ! -f "apache-tomcat/9/vanilla/apache-tomcat-${TOMCAT_VERSION}.tar.gz" ]
  then
    curl -LO "http://mirror.switch.ch/mirror/apache/dist/tomcat/tomcat-${TOMCAT_VERSION_MAJOR}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz"
    mv "apache-tomcat-${TOMCAT_VERSION}.tar.gz" apache-tomcat/9/vanilla
fi

docker build -t marschall/apache-tomcat-vanilla:9 --rm apache-tomcat/9/vanilla
docker build -t marschall/apache-tomcat-lightweight:9 --rm apache-tomcat/9/lightweight

