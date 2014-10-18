FROM marschall/oracle-server-jre

ADD apache-tomcat-8.0.14.tar.gz /opt
ENV CATALINA_HOME /opt/apache-tomcat-8.0.14

# remove all default web apps
RUN rm -rf CATALINA_HOME/webapps/ROOT
RUN rm -rf CATALINA_HOME/webapps/docs
RUN rm -rf CATALINA_HOME/webapps/examples
RUN rm -rf CATALINA_HOME/webapps/host-manager
RUN rm -rf CATALINA_HOME/webapps/manager

# Set the default command to run on boot
# This will boot WildFly in the standalone mode and bind to all interface
CMD ["$CATALINA_HOME/bin/catalina.sh", "start"]

