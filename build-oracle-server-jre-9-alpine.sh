#!/bin/bash
set -e

JAVA_VERSION_MINOR=181

if [ ! -f "oracle-server-jre/9-alpine/serverjre-9-ea+${JAVA_VERSION_MINOR}_linux-x64-musl_bin.tar.gz" ]
  then
    curl -LO "http://download.java.net/java/jdk9-alpine/archive/181/binaries/serverjre-9-ea+${JAVA_VERSION_MINOR}_linux-x64-musl_bin.tar.gz"
    mv "serverjre-9-ea+${JAVA_VERSION_MINOR}_linux-x64-musl_bin.tar.gz" oracle-server-jre/9-alpine
fi


docker build -t marschall/oracle-server-jre:9-alpine --rm oracle-server-jre/9-alpine

