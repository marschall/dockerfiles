#!/bin/bash

H2_VERSION=1.4.182

# Make sure the dependency is in the local repo
mvn dependency:get -Dartifact=com.h2database:h2:${H2_VERSION}

docker build -t marschall/dagger-example --rm dagger-example