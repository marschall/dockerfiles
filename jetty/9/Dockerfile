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

# jetty.sh needs a full bash
# downloaded and extracted from
# https://packages.debian.org/squeeze/amd64/bash-static/download
COPY bash-static /usr/bin/bash

# jetty uses /usr/bin/env bash
RUN mkdir -p /usr/bin && \
    ln -s /sbin/env /usr/bin/env

# Set the default command to run on boot
CMD ["/opt/jetty/bin/jetty.sh", "run"]

