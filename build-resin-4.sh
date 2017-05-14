#!/bin/bash

RESIN_VERSION=4.0.51

if [ ! -f "resin/4/resin-${RESIN_VERSION}.tar.gz" ]
  then
    curl -LO "http://caucho.com/download/resin-${RESIN_VERSION}.tar.gz"
    mv "resin-${RESIN_VERSION}.tar.gz" resin/4
fi

docker build -t marschall/resin:4 --rm resin/4

