#!/bin/bash

docker run -it --rm  marschall/jetty:9 /opt/jetty/bin/jetty.sh check
# docker run -it --rm  marschall/jetty:9 java -Djetty.logs=/opt/jetty/logs -Djetty.home=/opt/jetty -Djetty.base=/opt/jetty -jar /opt/jetty/start.jar jetty.state=/opt/jetty/jetty.state jetty-logging.xml jetty-started.xml
 
