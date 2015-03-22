FROM marschall/oracle-server-jre:8

ENV GLASSFISH_VERSION 4.1

# download glassfish
# extract glassfish

RUN wget http://dlc.sun.com.edgesuite.net/glassfish/${GLASSFISH_VERSION}/release/glassfish-${GLASSFISH_VERSION}.zip && \
    unzip glassfish-${GLASSFISH_VERSION}.zip -d /opt && \
    rm glassfish-${GLASSFISH_VERSION}.zip && \
    ln -s /opt/glassfish4 /opt/glassfish

EXPOSE 8080

# Set the default command to run on boot
# Because asadmin by default will exit after start-domain, make sure to add --verbose=true to keep the process running in foreground. This way, Docker will keep it running.
CMD ["/opt/glassfish/bin/asadmin", "start-domain", "--verbose=true"]

