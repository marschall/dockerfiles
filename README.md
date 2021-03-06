Dockerfiles
===========

Various Dockerfiles currently all revolving around Java.

Building
--------

You need to install [marschall/dagger-example](https://github.com/marschall/dagger-example).

    sh build-oracle-server-jre.sh
    sh build-tomcat.sh
    sh build-dagger-example.sh

Running
-------

You'll have to edit `dagger.env` to contain the public IP of the docker image.

Then remote JMX (and Mission Control) should work with `$RMI_SERVER_NAME:8081`

    sh run-dagger-example.sh

If you're running in the background you can stop the container with

    sh stop-tomcat.sh CONTAINER


DJCmd
-----

    djcmd.sh CONTAINER [ARG...]

If you don't pass any args `help` is executed.

Issues
------

`jmap` seems to be missing from Server JRE.

Log Files
---------

Either mount a host folder (has to be an absolute path, can use `pwd` tricks to support relative paths)

    -v /host/folder/logs:/opt/apache-tomcat/logs

Or use a data container

    sh create-data-container.sh
    --volumes-from dagger-example-logdata

You can extract the logs with `backup-data-container.sh`.

Todo
----
http://tomcat.apache.org/tomcat-8.0-doc/config/http.html#NIO2_specific_configuration

socket.directBuffer

(bool)Boolean value, whether to use direct ByteBuffers or java mapped ByteBuffers. Default is false.
When you are using direct buffers, make sure you allocate the appropriate amount of memory for the direct memory space. On Sun's JDK that would be something like -XX:MaxDirectMemorySize=256m. 

- logging (http://wiki.apache.org/tomcat/FAQ/Logging)
  - logrotate copytruncate

Inspiration taken from
https://github.com/jeanblanchard/docker-busybox-java/blob/master/Dockerfile

