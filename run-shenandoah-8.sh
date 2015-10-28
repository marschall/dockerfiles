#!/bin/bash

docker run -it --rm marschall/shenandoah:8 java -XX:-UseCompressedOops -XX:+UseShenandoahGC -version

