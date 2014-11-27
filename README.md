http://tomcat.apache.org/tomcat-8.0-doc/config/http.html#NIO2_specific_configuration

-Xnoverify
-Xmx
-awt headless

socket.directBuffer

(bool)Boolean value, whether to use direct ByteBuffers or java mapped ByteBuffers. Default is false.
When you are using direct buffers, make sure you allocate the appropriate amount of memory for the direct memory space. On Sun's JDK that would be something like -XX:MaxDirectMemorySize=256m. 

- logging
# http://wiki.apache.org/tomcat/FAQ/Logging
# logrotate copytruncate
- monitoring (heap dump, jmx remote, mission control)
- shutdown (echo SHUTDOWN | nc localhost 8005)
- db config
- NULL jar-scanner
