FROM busybox:ubuntu-14.04

ENV JAVA_VERSION_MAJOR 8
ENV JAVA_VERSION_MINOR 25
ENV JAVA_VERSION_BUILD 12
ENV JAVA_PACKAGE server-jre

# Download and extract Server JRE

RUN wget --header='Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie' http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz &&\
    tar -xzf ${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tarf -C /opt &&\
    rm ${JAVA_PACKAGE}-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar &&\
    ln -s /opt/jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR} /opt/jdk


ENV JAVA_HOME /opt/jdk
ENV PATH ${PATH}:${JAVA_HOME}/bin

# Add JCE Unlimited Strength Jurisdiction Policy Files
# Busybox has no unzip but we now have jar in the path

WORKDIR /opt
RUN wget --header='Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie' http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip &&\
    jar xf jce_policy-8.zip &&\
    cp UnlimitedJCEPolicyJDK8/local_policy.jar /opt/jdk/jre/lib/security/local_policy.jar &&\
    cp UnlimitedJCEPolicyJDK8/US_export_policy.jar /opt/jdk/jre/lib/security/US_export_policy.jar &&\
    rm -rf UnlimitedJCEPolicyJDK8 &&\
    rm jce_policy-8.zip

CMD ["java" "-version"]

