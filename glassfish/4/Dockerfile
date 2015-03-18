FROM marschall/oracle-server-jre

ENV GLASSFISH_VERSION 4.1

# download glassfish
# extract glassfish

RUN wget http://dlc.sun.com.edgesuite.net/glassfish/${GLASSFISH_VERSION}/release/glassfish-${GLASSFISH_VERSION}.zip && \
    unzip glassfish-${GLASSFISH_VERSION}.zip -d /opt && \
    rm glassfish-${GLASSFISH_VERSION}.zip && \
    ln -s /opt/glassfish4 /opt/glassfish

EXPOSE 8080

# Set the default command to run on boot
CMD ["/opt/glassfish/bin/asadmin", "start-domain"]

