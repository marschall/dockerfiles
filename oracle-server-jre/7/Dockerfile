FROM busybox:1.21-ubuntu

ENV JAVA_VERSION_MAJOR 7
ENV JAVA_VERSION_MINOR 79
ENV JAVA_PACKAGE server-jre

ADD ${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz /opt

RUN ln -s /opt/jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR} /opt/jdk

ENV JAVA_HOME /opt/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin

# Add JCE Unlimited Strength Jurisdiction Policy Files

COPY UnlimitedJCEPolicy/local_policy.jar /opt/jdk/jre/lib/security/local_policy.jar
COPY UnlimitedJCEPolicy/US_export_policy.jar /opt/jdk/jre/lib/security/US_export_policy.jar

CMD ["java" "-version"]

