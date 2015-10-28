#!/bin/bash

if [ ! -f "shenandoah/9/project-shenandoah-jdk9-jdk.tar.gz" ]
  then
    curl -LO "https://adopt-openjdk.ci.cloudbees.com/view/OpenJDK/job/project-shenandoah-jdk9/lastSuccessfulBuild/artifact/project-shenandoah-jdk9-jdk.tar.gz"
    mv "project-shenandoah-jdk9-jdk.tar.gz" shenandoah/9
fi

docker build -t marschall/shenandoah:9 --rm shenandoah/9

