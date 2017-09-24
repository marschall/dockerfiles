#!/bin/bash
set -e

JETTY_VERSION=9.4.7.v20170914

if [ ! -f "jetty/9/jetty-distribution-${JETTY_VERSION}.tar.gz" ]
  then
    curl -LO "http://central.maven.org/maven2/org/eclipse/jetty/jetty-distribution/${JETTY_VERSION}/jetty-distribution-${JETTY_VERSION}.tar.gz"
    mv "jetty-distribution-${JETTY_VERSION}.tar.gz" jetty/9
fi

docker build -t marschall/jetty:9 --rm jetty/9

