#!/bin/bash

JAVA_VERSION_MAJOR=8
JAVA_VERSION_MINOR=60
JAVA_VERSION_BUILD=27

if [ ! -f "jigsaw/jigsaw-jdk-bin-linux-x64.tar.gz" ]
  then
    curl -LOH "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://www.java.net/download/jigsaw/archive/b83/binaries/jigsaw-jdk-bin-linux-x64.tar.gz"
    mv "jigsaw-jdk-bin-linux-x64.tar.gz" jigsaw
fi


docker build -t marschall/jigsaw --rm jigsaw

