#!/bin/bash

JAVA_VERSION_MAJOR=7
JAVA_VERSION_MINOR=75
JAVA_VERSION_BUILD=13

if [ ! -f "oracle-server-jre/7/server-jre-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz" ]
  then
    curl -LOH "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/server-jre-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz"
    mv "server-jre-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz" oracle-server-jre/7
fi

if [ ! -f "oracle-server-jre/7/UnlimitedJCEPolicyJDK7.zip" ]
  then
    curl -LOH "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jce/7/UnlimitedJCEPolicyJDK7.zip
    mv UnlimitedJCEPolicyJDK7.zip oracle-server-jre/7
    unzip -d oracle-server-jre/7 oracle-server-jre/7/UnlimitedJCEPolicyJDK7.zip
fi


docker build -t marschall/oracle-server-jre:7 --rm oracle-server-jre/7

