#!/bin/bash
set -e

TOMCAT_VERSION_MAJOR=8
TOMCAT_VERSION=8.5.15

if [ ! -f "apache-tomcat/8/vanilla/apache-tomcat-${TOMCAT_VERSION}.tar.gz" ]
  then
    curl -LO "http://mirror.switch.ch/mirror/apache/dist/tomcat/tomcat-${TOMCAT_VERSION_MAJOR}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz"
    mv "apache-tomcat-${TOMCAT_VERSION}.tar.gz" apache-tomcat/8/vanilla
fi

docker build -t marschall/apache-tomcat-vanilla:8 --rm apache-tomcat/8/vanilla
docker build -t marschall/apache-tomcat-lightweight:8 --rm apache-tomcat/8/lightweight

