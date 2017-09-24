FROM marschall/oracle-server-jre:8

ENV JETTY_VERSION 9.4.7.v20170914

# extract jetty
ADD jetty-distribution-${JETTY_VERSION}.tar.gz /opt

RUN ln -s /opt/jetty-distribution-${JETTY_VERSION} /opt/jetty

ENV JETTY_HOME /opt/jetty

EXPOSE 8080

# Set the default command to run on boot
CMD ["/opt/jetty/bin/jetty.sh", "run"]

