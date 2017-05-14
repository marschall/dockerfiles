FROM marschall/oracle-server-jre:8

ENV RESIN_VERSION 4.0.51

# extract resin 
ADD resin-${RESIN_VERSION}.tar.gz /opt

RUN ln -s /opt/resin-${RESIN_VERSION} /opt/resin

ENV RESIN_HOME /opt/resin

EXPOSE 8080

# Set the default command to run on boot
CMD ["/opt/resin/bin/resin.sh", "console"]

