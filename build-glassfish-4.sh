#!/bin/bash
set -e

GLASSFISH_VERSION=4.1.2

if [ ! -f "glassfish/4/glassfish-${GLASSFISH_VERSION}.zip" ]
  then
    curl -LO "http://download.java.net/glassfish/${GLASSFISH_VERSION}/release/glassfish-${GLASSFISH_VERSION}.zip"
    mv "glassfish-${GLASSFISH_VERSION}.zip" glassfish/4
fi

unzip -q glassfish/4/glassfish-${GLASSFISH_VERSION}.zip -d glassfish/4

docker build -t marschall/glassfish:4 --rm glassfish/4

rm -rf glassfish/4/glassfish4
