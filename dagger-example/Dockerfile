FROM marschall/apache-tomcat

ENV H2_VERSION 1.4.182

COPY dependencies/h2-${H2_VERSION}.jar dependencies/null-jarscanner-1.0.0.jar ${CATALINA_HOME}/lib/
COPY dependencies/ROOT.war ${CATALINA_HOME}/webapps/

COPY server.xml ${CATALINA_HOME}/conf/server.xml
COPY web.xml ${CATALINA_HOME}/conf/web.xml


# https://gist.github.com/mclark/11434166
ENV TZ Europe/Zurich
COPY Zurich /etc/localtime
COPY timezone /etc/timezone

# Use /dev/urandom to intialize PRNG
# http://wiki.apache.org/tomcat/HowTo/FasterStartUp#Entropy_Source
# http://openjdk.java.net/jeps/123
# https://docs.oracle.com/javase/8/docs/technotes/guides/security/enhancements-8.html
COPY java.security ${JAVA_HOME}/jre/lib/security/java.security

# -Xverify:none \
# -XX:+PrintFlagsFinal \
ENV CATALINA_OPTS -Xmx128m -Xms128m -Xss228k \
  -XX:+UseG1GC -XX:+UseStringDeduplication \
  -XX:-HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=${CATALINA_HOME}/logs/ \
  -XX:+UnlockCommercialFeatures -XX:+FlightRecorder \
  -Djava.awt.headless=true \
  -Djava.net.preferIPv4Stack=true \
  -Dcom.sun.management.jmxremote \
  -Dcom.sun.management.jmxremote.port=8081 \
  -Dcom.sun.management.jmxremote.rmi.port=8081 \
  -Dcom.sun.management.jmxremote.ssl=false \
  -Dcom.sun.management.jmxremote.authenticate=false \
  -Djava.rmi.server.hostname=$RMI_SERVER_NAME \
  -Djdbc.url=$JDBC_URL

# JMX port
EXPOSE 8081

