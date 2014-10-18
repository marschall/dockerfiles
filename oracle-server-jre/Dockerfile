#FROM busybox:buildroot-2014.02
FROM debian:wheezy
# extracts the .tar.gz
ADD server-jre-8u25-linux-x64.tar.gz /opt

ENV JAVA_HOME /opt/jdk1.8.0_25
ENV PATH $PATH:$JAVA_HOME/bin

# Add JCE Unlimited Strength Jurisdiction Policy Files
# ADD only knows GZIP, not ZIP
# wheezy per default has no unzip
COPY UnlimitedJCEPolicyJDK8/local_policy.jar /opt/jdk1.8.0_25/jre/lib/security/local_policy.jar
COPY UnlimitedJCEPolicyJDK8/US_export_policy.jar /opt/jdk1.8.0_25/jre/lib/security/US_export_policy.jar

CMD ["java" "-version"]

