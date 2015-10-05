FROM debian:jessie

ENV JAVA_VERSION_MAJOR 9
ENV JAVA_VERSION_MINOR 60
ENV JAVA_PACKAGE server-jre

ADD jigsaw-jdk-bin-linux-x64.tar.gz /opt

RUN ln -s /opt/jdk1.${JAVA_VERSION_MAJOR}.0 /opt/jdk

ENV JAVA_HOME /opt/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin

# Use /dev/urandom to intialize PRNG
# http://wiki.apache.org/tomcat/HowTo/FasterStartUp#Entropy_Source
# http://openjdk.java.net/jeps/123
# https://docs.oracle.com/javase/8/docs/technotes/guides/security/enhancements-8.html
COPY java.security ${JAVA_HOME}/conf/security/java.security

CMD ["java" "-version"]

