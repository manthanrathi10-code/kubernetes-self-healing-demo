#!/bin/bash

while true
do
  POD=$(kubectl get pods -l app=selfheal -o jsonpath="{.items[0].metadata.name}")
  echo "Deleting pod: $POD"
  kubectl delete pod $POD
  sleep 5
done