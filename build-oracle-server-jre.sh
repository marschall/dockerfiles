#!/bin/bash

JAVA_VERSION_MAJOR=8
JAVA_VERSION_MINOR=25
JAVA_VERSION_BUILD=12

if [ ! -f "oracle-server-jre/server-jre-8u25-linux-x64.tar.gz" ]
  then
    curl -LOH "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u25-b17/server-jre-8u25-linux-x64.tar.gz
    mv server-jre-8u25-linux-x64.tar.gz oracle-server-jre
fi

if [ ! -f "oracle-server-jre/jce_policy-8.zip" ]
  then
    curl -LOH "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip
    mv jce_policy-8.zip oracle-server-jre
    unzip -d oracle-server-jre oracle-server-jre/jce_policy-8.zip
fi


docker build -t marschall/oracle-server-jre --rm oracle-server-jre
