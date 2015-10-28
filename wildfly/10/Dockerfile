FROM marschall/oracle-server-jre:8

ENV WILDFLY_VERSION 10.0.0.CR4

# download wildfly 
# extract wildfly 

RUN wget http://download.jboss.org/wildfly/${WILDFLY_VERSION}/wildfly-${WILDFLY_VERSION}.tar.gz && \
    tar xzf wildfly-${WILDFLY_VERSION}.tar.gz -C /opt && \
    rm wildfly-${WILDFLY_VERSION}.tar.gz && \
    ln -s /opt/wildfly-${WILDFLY_VERSION} /opt/wildfly

ENV JBOSS_HOME /opt/wildfly

EXPOSE 8080

# Set the default command to run on boot
# This will boot WildFly in the standalone mode and bind to all interface
CMD ["/opt/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]

