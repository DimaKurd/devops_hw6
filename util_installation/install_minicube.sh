#!/bin/bash

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

sudo usermod -aG docker $USER && newgrp docker

minikube start
minikube kubectl -- get po -A
alias kubectl="minikube kubectl --"
