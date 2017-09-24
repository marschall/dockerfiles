FROM marschall/oracle-server-jre:8

ENV GLASSFISH_VERSION 5.0

# download glassfish
# extract glassfish
ADD glassfish5/ /opt/glassfish5

RUN ln -s /opt/glassfish5 /opt/glassfish

EXPOSE 8080

# Set the default command to run on boot
# Because asadmin by default will exit after start-domain, make sure to add --verbose=true to keep the process running in foreground. This way, Docker will keep it running.
CMD ["/opt/glassfish/bin/asadmin", "start-domain", "--verbose=true"]

