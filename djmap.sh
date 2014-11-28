#!/bin/bash

# could be missing from server JRE
# https://docs.oracle.com/javase/8/docs/technotes/tools/unix/jmap.html

if [ $# -ne 1 ]
  then
    echo "Usage $0 CONTAINER"
    exit 1
fi

docker exec $1 jmap -heap 1
