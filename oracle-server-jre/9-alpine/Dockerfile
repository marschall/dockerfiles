FROM alpine:3.6

ENV JAVA_VERSION_MAJOR 9
ENV JAVA_VERSION_MINOR 181
ENV JAVA_PACKAGE server-jre

ADD serverjre-9-ea+${JAVA_VERSION_MINOR}_linux-x64-musl_bin.tar.gz /opt

RUN ln -s /opt/jdk-9 /opt/jdk

ENV JAVA_HOME /opt/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin

# JCE Unlimited Strength Jurisdiction Policy Files
# should no longer be needed

# Use /dev/urandom to intialize PRNG
# http://wiki.apache.org/tomcat/HowTo/FasterStartUp#Entropy_Source
# http://openjdk.java.net/jeps/123
# https://docs.oracle.com/javase/8/docs/technotes/guides/security/enhancements-8.html
COPY java.security ${JAVA_HOME}/conf/security/java.security

CMD ["java" "-version"]

