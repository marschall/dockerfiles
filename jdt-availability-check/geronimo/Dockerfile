FROM marschall/apache-geronimo:3

ENV JAVA_OPTS -Xmx512m -Xms512m -Xss228k \
  -XX:MaxPermSize=128m \
  -Djava.awt.headless=true

COPY dependencies/jdt-availability-check.war ${GERONIMO_HOME}/deploy/

