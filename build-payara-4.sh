#!/bin/bash
set -e

PAYARA_VERSION=4.1.1.171.1

if [ ! -f "payara/4/payara-${PAYARA_VERSION}.zip" ]
  then
    curl -LO "https://s3-eu-west-1.amazonaws.com/payara.fish/Payara+Downloads/Payara+${PAYARA_VERSION}/payara-${PAYARA_VERSION}.zip"
    mv "payara-${PAYARA_VERSION}.zip" payara/4
fi

unzip -q payara/4/payara-${PAYARA_VERSION}.zip -d payara/4

docker build -t marschall/payara:4 --rm payara/4

rm -rf rm payara/4/payara41
