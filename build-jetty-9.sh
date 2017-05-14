#!/bin/bash
set -e

JETTY_BRANCH=stable-9
JETTY_VERSION=9.4.5.v20170502

if [ ! -f "jetty/9/jetty-distribution-${JETTY_VERSION}.tar.gz" ]
  then
    curl -LO "http://central.maven.org/maven2/org/eclipse/jetty/jetty-distribution/${JETTY_VERSION}/jetty-distribution-${JETTY_VERSION}.tar.gz"
    mv "jetty-distribution-${JETTY_VERSION}.tar.gz" jetty/9
fi

docker build -t marschall/jetty:9 --rm jetty/9

