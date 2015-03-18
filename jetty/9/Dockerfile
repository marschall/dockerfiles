FROM marschall/oracle-server-jre

ENV JETTY_BRANCH stable-9
ENV JETTY_VERSION 9.2.10.v20150310

# download jetty 
# extract jetty 

RUN wget http://download.eclipse.org/jetty/${JETTY_BRANCH}/dist/jetty-distribution-${JETTY_VERSION}.tar.gz && \
    tar xzf jetty-distribution-${JETTY_VERSION}.tar.gz -C /opt && \
    rm jetty-distribution-${JETTY_VERSION}.tar.gz && \
    ln -s /opt/jetty-distribution-${JETTY_VERSION} /opt/jetty

ENV JETTY_HOME /opt/jetty

EXPOSE 8080

# Set the default command to run on boot
CMD ["/opt/jetty/bin/jetty.sh", "run"]

