#!/bin/bash

JAVA_VERSION_MAJOR=8

if [ ! -f "shenandoah/8/project-shenandoah-jdk8-jdk.tar.gz" ]
  then
    curl -LO "https://adopt-openjdk.ci.cloudbees.com/view/OpenJDK/job/project-shenandoah-jdk8/lastSuccessfulBuild/artifact/project-shenandoah-jdk8-jdk.tar.gz"
    mv "project-shenandoah-jdk8-jdk.tar.gz" shenandoah/8
fi

if [ ! -f "shenandoah/8/jce_policy-${JAVA_VERSION_MAJOR}.zip" ]
  then
    curl -LOH "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jce/${JAVA_VERSION_MAJOR}/jce_policy-${JAVA_VERSION_MAJOR}.zip
    mv jce_policy-8.zip shenandoah/8
    unzip -d shenandoah/8 shenandoah/8/jce_policy-8.zip
fi


docker build -t marschall/shenandoah:8 --rm shenandoah/8

