FROM marschall/oracle-server-jre

ENV TOMEE_VERSION 1.7.1
ENV TOMEE_PROFILE webprofile

# download tomee
# extract tomee

RUN wget http://www.pirbot.com/mirrors/apache/tomee/tomee-${TOMEE_VERSION}/apache-tomee-${TOMEE_VERSION}-${TOMEE_PROFILE}.tar.gz && \
    tar xzf apache-tomee-${TOMEE_VERSION}-${TOMEE_PROFILE}.tar.gz -C /opt && \
    rm apache-tomee-${TOMEE_VERSION}-${TOMEE_PROFILE}.tar.gz && \
    ln -s /opt/apache-tomee-${TOMEE_PROFILE}-${TOMEE_VERSION} /opt/apache-tomee \
    rm -rf /opt/apache-tomee/webapps/ROOT \
        /opt/apache-tomee/webapps/docs \
        /opt/apache-tomee/webapps/tomee \
        /opt/apache-tomee/webapps/host-manager \
        /opt/apache-tomee/webapps/manager

ENV CATALINA_HOME /opt/apache-tomee

EXPOSE 8080

# Set the default command to run on boot
CMD ["/opt/apache-tomee/bin/catalina.sh", "run"]


