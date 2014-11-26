FROM marschall/apache-tomcat

ENV H2_VERSION 1.4.182

COPY ~/.m2/repository/com/h2database/h2/${H2_VERSION}/h2-${H2_VERSION}.jar $CATALINA_BASE/lib

COPY server.xml ${CATALINA_HOME}/conf/server.xml

