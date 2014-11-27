FROM marschall/apache-tomcat

ENV H2_VERSION 1.4.182

COPY dependencies/h2-${H2_VERSION}.jar dependencies/null-jarscanner-1.0.0.jar ${CATALINA_HOME}/lib
COPY dependencies/ROOT.war ${CATALINA_HOME}/webapps

COPY schema.sql data.sql ${CATALINA_HOME}/conf

COPY server.xml ${CATALINA_HOME}/conf/server.xml

