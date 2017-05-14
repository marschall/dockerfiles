#!/bin/bash

WILDFLY_VERSION=10.1.0.Final

if [ ! -f "wildfly/10/wildfly-${WILDFLY_VERSION}.tar.gz" ]
  then
    curl -LO "https://download.jboss.org/wildfly/${WILDFLY_VERSION}/wildfly-${WILDFLY_VERSION}.tar.gz"
    mv "wildfly-${WILDFLY_VERSION}.tar.gz" wildfly/10
fi

docker build -t marschall/wildfly:10 --rm wildfly/10 

