FROM marschall/oracle-server-jre:8

ENV PAYARA_VERSION 4.1.1.171.1

# extract glassfish
ADD payara41 /opt/payara41

RUN ln -s /opt/payara41 /opt/payara

EXPOSE 8080

# Set the default command to run on boot
# Because asadmin by default will exit after start-domain, make sure to add --verbose=true to keep the process running in foreground. This way, Docker will keep it running.
CMD ["/opt/payara/bin/asadmin", "start-domain", "--verbose=true"]

