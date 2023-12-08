#!/bin/bash

minikube kubectl -- apply -f ./web-deployment.yaml

echo sleeping 20 secs

sleep 20

minikube kubectl -- get pods

minikube kubectl -- get rs

minikube kubectl -- describe pod web

minikube kubectl -- port-forward --address 0.0.0.0 deployment/web 8080:8000
