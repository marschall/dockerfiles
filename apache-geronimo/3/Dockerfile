FROM marschall/oracle-server-jre

ENV GERONIMO_VERSION 3.0.1
ENV GERONIMO_FULL_VERSION tomcat7-javaee6-${GERONIMO_VERSION}

# download geronimo
# extract geronimo

RUN wget http://www.pirbot.com/mirrors/apache/geronimo/${GERONIMO_VERSION}/geronimo-${GERONIMO_FULL_VERSION}-bin.tar.gz && \
    tar xzf geronimo-${GERONIMO_FULL_VERSION}-bin.tar.gz -C /opt && \
    rm geronimo-${GERONIMO_FULL_VERSION}-bin.tar.gz && \
    ln -s /opt/geronimo-${GERONIMO_FULL_VERSION} /opt/apache-geronimo

ENV GERONIMO_HOME /opt/apache-geronimo

EXPOSE 8080

# Set the default command to run on boot
CMD ["/opt/apache-geronimo/bin/geronimo", "run"]


