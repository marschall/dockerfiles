#!/bin/bash

mkdir -p dagger-example/backup

# mount the most folder $(pwd):/dagger-example/backup to /backup in the container
# tar /opt/apache-tomcat/logs to /backup/backup.tar in the container
# tar wil end up in $(pwd):/dagger-example/backup/backup.tar
docker run -ti --rm --volumes-from dagger-example-logdata -v $(pwd)/dagger-example/backup:/backup debian:wheezy tar cvf /backup/backup.tar /opt/apache-tomcat/logs
# docker run -ti --rm --volumes-from dagger-example-logdata -v $(pwd)/dagger-example/backup:/backup debian:wheezy ls -l /opt/apache-tomcat/logs
