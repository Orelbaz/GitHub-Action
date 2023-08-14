#!/bin/bash

echo 'Getting Chart.yaml...'
echo "apiVersion: v2
name: nasa-app
version: 1.$BUILD_NUMBER.0
description: A Helm chart for deploying Flask and Redis" > Chart.yaml

echo 'Getting values.yaml...'
echo "TAG: $BUILD_NUMBER" > values.yaml