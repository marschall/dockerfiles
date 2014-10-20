Server JRE (Java SE Runtime Environment) 8 Downloads

http://www.oracle.com/technetwork/java/javase/downloads/server-jre8-downloads-2133154.html

Download Java Cryptography Extension (JCE) Unlimited Strength Jurisdiction Policy Files 8 Download

http://www.oracle.com/technetwork/java/javase/downloads/jce8-download-2133166.html

unzip jce_policy-8.zip

docker build -t marschall/oracle-server-jre --rm oracle-server-jre

docker run -it --rm marschall/oracle-server-jre java -version

Remove more things
https://github.com/jeanblanchard/docker-busybox-java/blob/master/Dockerfile
