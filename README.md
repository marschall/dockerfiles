Dockerfiles
===========


Running
-------

Start boot2dockerr with:

    boot2docker start

Set up in your shell with:

    $(boot2docker shellinit)

You'll have to edit `dagger.env` to contain the public IP of the docker image.

Then JMX should work with $RMI_SERVER_NAME:8081

DJCmd
-----

    djcmd.sh CONTAINER [ARG...]

If you don't pass any args `help` is executed.


Todo
----
http://tomcat.apache.org/tomcat-8.0-doc/config/http.html#NIO2_specific_configuration

socket.directBuffer

(bool)Boolean value, whether to use direct ByteBuffers or java mapped ByteBuffers. Default is false.
When you are using direct buffers, make sure you allocate the appropriate amount of memory for the direct memory space. On Sun's JDK that would be something like -XX:MaxDirectMemorySize=256m. 

- logging (http://wiki.apache.org/tomcat/FAQ/Logging)
  - logrotate copytruncate

Remove more things
https://github.com/jeanblanchard/docker-busybox-java/blob/master/Dockerfile

