FROM marschall/oracle-server-jre

ENV TOMEE_VERSION 3.0.1
ENV TOMEE_FULL_VERSION tomcat7-javaee6-${TOMEE_VERSION}

# download wildfly 
# extract wildfly 

RUN wget http://www.pirbot.com/mirrors/apache/geronimo/${TOMEE_VERSION}/geronimo-${TOMEE_FULL_VERSION}-bin.tar.gz && \
    tar xzf geronimo-${TOMEE_FULL_VERSION}-bin.tar.gz -C /opt && \
    rm geronimo-${TOMEE_FULL_VERSION}-bin.tar.gz && \
    ln -s /opt/geronimo-${TOMEE_FULL_VERSION} /opt/apache-geronimo

ENV GERONIMO_HOME /opt/apache-geronimo

EXPOSE 8080

# Set the default command to run on boot
CMD ["/opt/apache-geronimo/bin/geronimo", "run"]


