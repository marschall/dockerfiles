FROM marschall/jetty:9

ENV JAVA_OPTIONS -Xmx128m -Xms128m -Xss228k \
  -Djava.awt.headless=true

COPY dependencies/jdt-availability-check.war /opt/jetty/webapps/

