FROM marschall/oracle-server-jre:8

ENV TOMEE_VERSION 7.0.2
ENV TOMEE_PROFILE webprofile

# extract tomee

ADD apache-tomee-${TOMEE_VERSION}-${TOMEE_PROFILE}.tar.gz /opt

RUN ln -s /opt/apache-tomee-${TOMEE_PROFILE}-${TOMEE_VERSION} /opt/apache-tomee && \
    rm -rf /opt/apache-tomee/webapps/ROOT \
           /opt/apache-tomee/webapps/docs \
           /opt/apache-tomee/webapps/host-manager \
           /opt/apache-tomee/webapps/manager

ENV CATALINA_HOME /opt/apache-tomee

EXPOSE 8080

# Set the default command to run on boot
CMD ["/opt/apache-tomee/bin/catalina.sh", "run"]


