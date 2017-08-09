#!/bin/bash
set -e

JAVA_VERSION_MAJOR=8
JAVA_VERSION_MINOR=144
JAVA_VERSION_BUILD=01
JAVA_VERSION_UUID=090f390dda5b47b9b721c7dfaa008135

if [ ! -f "oracle-server-jre/8/server-jre-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz" ]
  then
    curl -LOH "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/${JAVA_VERSION_UUID}/server-jre-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz"
    mv "server-jre-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz" oracle-server-jre/8
fi

if [ ! -f "oracle-server-jre/8/jce_policy-${JAVA_VERSION_MAJOR}.zip" ]
  then
    curl -LOH "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jce/${JAVA_VERSION_MAJOR}/jce_policy-${JAVA_VERSION_MAJOR}.zip
    mv jce_policy-8.zip oracle-server-jre/8
    unzip -d oracle-server-jre/8 oracle-server-jre/8/jce_policy-8.zip
fi


docker build -t marschall/oracle-server-jre:8 --rm oracle-server-jre/8

