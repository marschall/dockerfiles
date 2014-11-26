#!/bin/bash

# -ti
docker run --rm -p 8080:8080 marschall/apache-tomcat &

# boot2docker start
# $(boot2docker shellinit) 
# boot2docker ip

