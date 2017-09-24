#!/bin/bash
set -e

JAVA_VERSION_BUILD=181

if [ ! -f "oracle-server-jre/9/serverjre-9_linux-x64_bin.tar.gz" ]
  then
    curl -LOH "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/9+${JAVA_VERSION_BUILD}/serverjre-9_linux-x64_bin.tar.gz"
    mv "serverjre-9_linux-x64_bin.tar.gz" oracle-server-jre/9
fi


docker build -t marschall/oracle-server-jre:9 --rm oracle-server-jre/9

