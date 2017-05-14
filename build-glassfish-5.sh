#!/bin/bash
set -e

GLASSFISH_VERSION=5.0

if [ ! -f "glassfish/5/latest-glassfish.zip" ]
  then
    curl -LO "http://download.java.net/glassfish/${GLASSFISH_VERSION}/promoted/latest-glassfish.zip"
    mv "latest-glassfish.zip" glassfish/5
fi


unzip -q glassfish/5/latest-glassfish.zip -d glassfish/5

docker build -t marschall/glassfish:5 --rm glassfish/5

rm -rf glassfish/5/glassfish4
