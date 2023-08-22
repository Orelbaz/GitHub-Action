#!/bin/bash

EXTERNAL_IP=$(kubectl get service flask-service -o=jsonpath='{.status.loadBalancer.ingress[0].ip}')
http_response=$(curl -s -o /dev/null -w "%{http_code}" http://${EXTERNAL_IP}:80)

if [[ $http_response == 200 ]]; then
  echo "Flask app returned a 200 status code. Test passed!"
  echo "Uploading Helm chart to the Google Cloud Storage bucket"
else
  echo "Flask app returned a non-200 status code: $http_response. Test failed!"
  exit 1
fi
