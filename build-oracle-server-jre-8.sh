#!/bin/bash

JAVA_VERSION_MAJOR=8
JAVA_VERSION_MINOR=40
JAVA_VERSION_BUILD=26

if [ ! -f "oracle-server-jre/8/server-jre-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz" ]
  then
    curl -LOH "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/server-jre-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz"
    mv "server-jre-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz" oracle-server-jre/8
fi

if [ ! -f "oracle-server-jre/8/jce_policy-${JAVA_VERSION_MAJOR}.zip" ]
  then
    curl -LOH "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jce/${JAVA_VERSION_MAJOR}/jce_policy-${JAVA_VERSION_MAJOR}.zip
    mv jce_policy-8.zip oracle-server-jre/8
    unzip -d oracle-server-jre/8 oracle-server-jre/8/jce_policy-8.zip
fi


docker build -t marschall/oracle-server-jre:8 --rm oracle-server-jre/8

