#!/bin/bash

BUILD_NUMBER=$1
MY_PATH=$2

cd ${MY_PATH}Kubernetes-pipeline/CoinSite
docker build -t orelbaz/coinsitek8s:${BUILD_NUMBER} .
docker push orelbaz/coinsitek8s:${BUILD_NUMBER}