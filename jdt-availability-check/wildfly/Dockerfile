FROM marschall/wildfly:8

# prevent WildFly from starting java to figure out options
ENV PRESERVE_JAVA_OPTS true

ENV JAVA_OPTS -Xmx128m -Xms128m -Xss228k \
  -Djboss.modules.system.pkgs=org.jboss.byteman \
  -noverify \
  -Djava.net.preferIPv4Stack=true

COPY dependencies/jdt-availability-check.war /opt/wildfly/standalone/deployments/

