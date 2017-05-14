#!/bin/bash

docker exec $1 jcmd 1 GC.heap_dump /opt/docker.hprof
docker cp $1:/opt/docker.hprof .
docker exec $1 rm /opt/docker.hprof

