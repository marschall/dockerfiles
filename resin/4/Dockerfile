FROM marschall/oracle-server-jre

ENV RESIN_VERSION 4.0.43

# download resin
# extract resin 

RUN wget http://caucho.com/download/resin-${RESIN_VERSION}.tar.gz && \
    tar xzf resin-${RESIN_VERSION}.tar.gz -C /opt && \
    rm resin-${RESIN_VERSION}.tar.gz && \
    ln -s /opt/resin-${RESIN_VERSION} /opt/resin

ENV RESIN_HOME /opt/resin

EXPOSE 8080

# Set the default command to run on boot
CMD ["/opt/resin/bin/resin.sh", "console"]

