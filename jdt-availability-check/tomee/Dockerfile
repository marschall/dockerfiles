FROM marschall/apache-tomee:1

ENV CATALINA_OPTS -Xmx128m -Xms128m -Xss228k \
  -Djava.awt.headless=true

COPY dependencies/jdt-availability-check.war ${CATALINA_HOME}/webapps/

