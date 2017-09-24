#!/bin/bash
set -e

JAVA_VERSION_MINOR=181

if [ ! -f "openj9/9/OpenJDK9-OPENJ9_x64_Linux_jdk-9.${JAVA_VERSION_MINOR}.tar.gz" ]
  then
    curl -LO "https://github.com/AdoptOpenJDK/openjdk9-openj9-releases/releases/download/jdk-9%2B${JAVA_VERSION_MINOR}/OpenJDK9-OPENJ9_x64_Linux_jdk-9.${JAVA_VERSION_MINOR}.tar.gz"
    mv "OpenJDK9-OPENJ9_x64_Linux_jdk-9.${JAVA_VERSION_MINOR}.tar.gz" openj9/9
fi


docker build -t marschall/openj9:9 --rm openj9/9

