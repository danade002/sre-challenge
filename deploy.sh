#!/bin/bash

##Build and push the dockerfile for invoice-app
docker build -t invoice-app .
docker image tag invoice-app danielademeso/invoice-app
docker push danielademeso/invoice-app

##Build and push the dockerfile for payment-provider
docker build -t payment-provider .
docker image tag payment-provider danielademeso/payment-provider
docker push danielademeso/payment-provider

## Deploy invoice-app & service 
kubectl apply -f invoice-app/deployment.yaml

## Deploy payment-provider app & service
kubectl apply -f payment-provider/deployment.yaml
