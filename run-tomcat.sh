#!/bin/bash

# -ti
# docker run -ti --rm -p 8080:8080 marschall/apache-tomcat &
# docker run --rm -d -p 8080:8080 marschall/apache-tomcat
docker run -d -p 8080:8080 -v `pwd`/apache-tomcat/logs:/opt/apache-tomcat/logs marschall/apache-tomcat

# boot2docker start
# $(boot2docker shellinit) 
# boot2docker ip

# stop with
# docker exec 6882c4ff66c1 /opt/apache-tomcat/bin/catalina.sh stop


