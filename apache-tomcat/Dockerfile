FROM marschall/oracle-server-jre

ENV TOMCAT_VERSION_MAJOR 8
ENV TOMCAT_VERSION 8.0.20

# download tomcat
# extract tomcat
# remove all default web apps
# remove JARs we don't want

RUN wget http://mirror.switch.ch/mirror/apache/dist/tomcat/tomcat-${TOMCAT_VERSION_MAJOR}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    tar xzf apache-tomcat-${TOMCAT_VERSION}.tar.gz -C /opt && \
    rm apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    ln -s /opt/apache-tomcat-${TOMCAT_VERSION} /opt/apache-tomcat && \
    rm /opt/apache-tomcat/bin/*.bat && \
    rm -rf /opt/apache-tomcat/webapps/ROOT \
        /opt/apache-tomcat/webapps/docs \
        /opt/apache-tomcat/webapps/examples \
        /opt/apache-tomcat/webapps/host-manager \
        /opt/apache-tomcat/webapps/manager && \
    rm /opt/apache-tomcat/lib/annotations-api.jar \
        /opt/apache-tomcat/lib/tomcat-dbcp.jar \
        /opt/apache-tomcat/lib/tomcat-i18n-*.jar

ENV CATALINA_HOME /opt/apache-tomcat

# ENV CATALINA_PID ${CATALINA_HOME}/tomcat.pid"

VOLUME ["/opt/apache-tomcat/logs"]

EXPOSE 8080

# Set the default command to run on boot
CMD ["${CATALINA_HOME}/bin/catalina.sh", "run"]

