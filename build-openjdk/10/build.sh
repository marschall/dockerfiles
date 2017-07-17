#!/bin/sh

hg clone http://hg.openjdk.java.net/jdk10/jdk10 /jdk

cd /jdk

sh get_source.sh

bash ./configure --enable-debug --disable-warnings-as-errors

make clean
make all

