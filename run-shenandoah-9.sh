#!/bin/bash

docker run -it --rm marschall/shenandoah:9 java -XX:-UseCompressedOops -XX:+UseShenandoahGC -version

