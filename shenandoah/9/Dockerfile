FROM debian:jessie
# FROM busybox:1.21-ubuntu

ENV JAVA_VERSION_MAJOR 9
ENV JAVA_PACKAGE jdk

ADD project-shenandoah-jdk${JAVA_VERSION_MAJOR}-${JAVA_PACKAGE}.tar.gz /opt

RUN ln -s /opt/images/jdk /opt/jdk

ENV JAVA_HOME /opt/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin

# Use /dev/urandom to intialize PRNG
# http://wiki.apache.org/tomcat/HowTo/FasterStartUp#Entropy_Source
# http://openjdk.java.net/jeps/123
# https://docs.oracle.com/javase/8/docs/technotes/guides/security/enhancements-8.html
# COPY java.security ${JAVA_HOME}/jre/lib/security/java.security

CMD ["java" "-XX:+UseShenandoahGC" "-version"]

