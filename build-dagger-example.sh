#!/bin/bash

MAVEN_OPTS="-Xms32m -Xmx32m -Xss160k -Xnoverify"

H2_VERSION=1.4.182

DAGGER_EXAMPLE_VERSION=1.0.0-SNAPSHOT

OUTPUT_FOLDER=dagger-example/dependencies

if [ ! -f ~/.m2/repository/com/github/marschall/dagger-example-web/${DAGGER_EXAMPLE_VERSION}/dagger-example-web-${DAGGER_EXAMPLE_VERSION}.war ]
  then
    echo build and install dagger-example-web first
    exit 1
  else
    cp ~/.m2/repository/com/github/marschall/dagger-example-web/${DAGGER_EXAMPLE_VERSION}/dagger-example-web-${DAGGER_EXAMPLE_VERSION}.war ${OUTPUT_FOLDER}/ROOT.war
fi

if [ ! -f dagger-example/dependencies/h2-${H2_VERSION}.jar ]
  then
    mvn dependency:get -Dartifact=com.h2database:h2:${H2_VERSION}
    mvn dependency:copy -Dartifact=com.h2database:h2:${H2_VERSION} -DoutputDirectory=$OUTPUT_FOLDER
fi

if [ ! -f dagger-example/dependencies/null-jarscanner-1.0.0.jar ]
  then
    mvn dependency:get -Dartifact=com.github.marschall:null-jarscanner:1.0.0
    mvn dependency:copy -Dartifact=com.github.marschall:null-jarscanner:1.0.0 -DoutputDirectory=$OUTPUT_FOLDER
fi


docker build -t marschall/dagger-example --rm dagger-example