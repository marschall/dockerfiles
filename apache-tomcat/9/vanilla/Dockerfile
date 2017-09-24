FROM marschall/oracle-server-jre:8

ENV TOMCAT_VERSION_MAJOR 9
ENV TOMCAT_VERSION 9.0.0.M26

# extract tomcat
# remove all default web apps
# remove JARs we don't want

ADD apache-tomcat-${TOMCAT_VERSION}.tar.gz /opt

RUN ln -s /opt/apache-tomcat-${TOMCAT_VERSION} /opt/apache-tomcat && \
    rm /opt/apache-tomcat/bin/*.bat && \
    rm -rf /opt/apache-tomcat/webapps/ROOT \
           /opt/apache-tomcat/webapps/docs \
           /opt/apache-tomcat/webapps/examples \
           /opt/apache-tomcat/webapps/host-manager \
           /opt/apache-tomcat/webapps/manager && \
    rm /opt/apache-tomcat/lib/tomcat-i18n-*.jar

# disable watching for changed
# enable parallel class loading
COPY context.xml /opt/apache-tomcat/conf/

ENV CATALINA_HOME /opt/apache-tomcat

# ENV CATALINA_PID ${CATALINA_HOME}/tomcat.pid"

VOLUME ["/opt/apache-tomcat/logs"]

EXPOSE 8080

# Set the default command to run on boot
CMD ["/opt/apache-tomcat/bin/catalina.sh", "run"]

