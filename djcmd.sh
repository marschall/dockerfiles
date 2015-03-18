#!/bin/bash

if [ $# -eq 1 ]
  then
    docker exec $1 jcmd 1 help
  else
    docker exec $1 jcmd 1 ${*:2}
fi
