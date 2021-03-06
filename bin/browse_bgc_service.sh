#!/bin/bash

set -eu
set -o pipefail

trap '{ echo "" ; exit 1; }' INT

if [ -z "$1" ];
then 
  echo "Please pass the cluster context"
  exit 1
fi

SVC_URL=$(kubectl --context "$1" -n istio-system get svc istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].*}')

printf "\nOpening Service URL %s\n" "$SVC_URL"

unamestr=$(uname)

if [ "$unamestr" == "Darwin" ];
then
  open "http://$SVC_URL"
else
  xdg-open "http://$SVC_URL"
fi


