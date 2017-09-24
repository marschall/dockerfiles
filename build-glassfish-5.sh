#!/bin/bash
set -e

GLASSFISH_VERSION=5.0

if [ ! -f "glassfish/5/glassfish-${GLASSFISH_VERSION}.zip" ]
  then
    curl -LO "http://download.oracle.com/glassfish/5.0/release/glassfish-${GLASSFISH_VERSION}.zip"
    mv "glassfish-${GLASSFISH_VERSION}.zip" glassfish/5
fi


unzip -q glassfish/5/glassfish-${GLASSFISH_VERSION}.zip -d glassfish/5

docker build -t marschall/glassfish:5 --rm glassfish/5

rm -rf glassfish/5/glassfish5
