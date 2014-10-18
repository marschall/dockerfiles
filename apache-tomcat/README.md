curl -O http://mirror.switch.ch/mirror/apache/dist/tomcat/tomcat-8/v8.0.14/bin/apache-tomcat-8.0.14.tar.gz

docker build -t marschall/apache-tomcat --rm apache-tomcat
