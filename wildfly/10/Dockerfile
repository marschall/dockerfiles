FROM marschall/oracle-server-jre:8

ENV WILDFLY_VERSION 10.1.0.Final

# extract wildfly
ADD wildfly-${WILDFLY_VERSION}.tar.gz /opt

RUN ln -s /opt/wildfly-${WILDFLY_VERSION} /opt/wildfly

ENV JBOSS_HOME /opt/wildfly

EXPOSE 8080

# Set the default command to run on boot
# This will boot WildFly in the standalone mode and bind to all interface
CMD ["/opt/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]

