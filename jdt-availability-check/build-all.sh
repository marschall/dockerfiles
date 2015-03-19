#!/bin/bash

MAVEN_OPTS="-Xms32m -Xmx32m -Xss160k -Xnoverify"

PROJECT_VERSION=0.1.0-SNAPSHOT

if [ ! -f ~/.m2/repository/com/github/marschall/jdt-availability-check/${PROJECT_VERSION}/jdt-availability-check-${PROJECT_VERSION}.war ]
  then
    echo build and install jdt-availability-check first
    exit 1
  else
    cp ~/.m2/repository/com/github/marschall/jdt-availability-check/${PROJECT_VERSION}/jdt-availability-check-${PROJECT_VERSION}.war    tomcat/dependencies/jdt-availability-check.war
    cp ~/.m2/repository/com/github/marschall/jdt-availability-check/${PROJECT_VERSION}/jdt-availability-check-${PROJECT_VERSION}.war     tomee/dependencies/jdt-availability-check.war
    cp ~/.m2/repository/com/github/marschall/jdt-availability-check/${PROJECT_VERSION}/jdt-availability-check-${PROJECT_VERSION}.war   wildfly/dependencies/jdt-availability-check.war
    cp ~/.m2/repository/com/github/marschall/jdt-availability-check/${PROJECT_VERSION}/jdt-availability-check-${PROJECT_VERSION}.war glassfish/dependencies/jdt-availability-check.war
    cp ~/.m2/repository/com/github/marschall/jdt-availability-check/${PROJECT_VERSION}/jdt-availability-check-${PROJECT_VERSION}.war  geronimo/dependencies/jdt-availability-check.war
    cp ~/.m2/repository/com/github/marschall/jdt-availability-check/${PROJECT_VERSION}/jdt-availability-check-${PROJECT_VERSION}.war     resin/dependencies/jdt-availability-check.war

fi

docker build -t marschall/jdt-availability-check-tomcat    --rm tomcat
docker build -t marschall/jdt-availability-check-tomee     --rm tomee
docker build -t marschall/jdt-availability-check-wildfly   --rm wildfly
docker build -t marschall/jdt-availability-check-glassfish --rm glassfish
docker build -t marschall/jdt-availability-check-geronimo  --rm geronimo
docker build -t marschall/jdt-availability-check-resin     --rm resin



