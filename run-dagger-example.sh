#!/bin/bash

mkdir -p dagger-example/logs

# runs in background, mounts logs directory to host directory
# does not remove container upon completion
# docker run -d -p 8080:8080 -p 8081:8081 -v $(pwd)/dagger-example/logs:/opt/apache-tomcat/logs --env-file=dagger.env marschall/dagger-example

# runs in foreground, mounts logs directory to host directory
# removes container upon completion
# docker run -ti --rm -p 8080:8080 -p 8081:8081 -v $(pwd)/dagger-example/logs:/opt/apache-tomcat/logs --env-file=dagger.env marschall/dagger-example

# runs in foreground, mounts logs directory to host directory
# removes container upon completion
docker run -ti --rm -p 8080:8080 -p 8081:8081 --volumes-from dagger-example-logdata --env-file=dagger.env marschall/dagger-example

