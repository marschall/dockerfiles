FROM busybox:ubuntu-14.04

ENV JAVA_VERSION_MAJOR 8
ENV JAVA_VERSION_MINOR 60
ENV JAVA_PACKAGE server-jre

ADD ${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz /opt

RUN ln -s /opt/jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR} /opt/jdk

ENV JAVA_HOME /opt/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin

# Add JCE Unlimited Strength Jurisdiction Policy Files

COPY UnlimitedJCEPolicyJDK8/local_policy.jar /opt/jdk/jre/lib/security/local_policy.jar
COPY UnlimitedJCEPolicyJDK8/US_export_policy.jar /opt/jdk/jre/lib/security/US_export_policy.jar

# Use /dev/urandom to intialize PRNG
# http://wiki.apache.org/tomcat/HowTo/FasterStartUp#Entropy_Source
# http://openjdk.java.net/jeps/123
# https://docs.oracle.com/javase/8/docs/technotes/guides/security/enhancements-8.html
COPY java.security ${JAVA_HOME}/jre/lib/security/java.security

CMD ["java" "-version"]

