#!/bin/bash

docker build -t marschall/apache-tomcat-vanilla --rm apache-tomcat/vanilla
docker build -t marschall/apache-tomcat-lightweight --rm apache-tomcat/lightweight

