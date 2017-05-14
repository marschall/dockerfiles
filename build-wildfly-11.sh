#!/bin/bash

WILDFLY_VERSION=11.0.0.Alpha1

if [ ! -f "wildfly/11/wildfly-${WILDFLY_VERSION}.tar.gz" ]
  then
    curl -LO "https://download.jboss.org/wildfly/${WILDFLY_VERSION}/wildfly-${WILDFLY_VERSION}.tar.gz"
    mv "wildfly-${WILDFLY_VERSION}.tar.gz" wildfly/11
fi

docker build -t marschall/wildfly:11 --rm wildfly/11 

