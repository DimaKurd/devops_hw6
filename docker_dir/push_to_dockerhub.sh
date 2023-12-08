#!/bin/bash

docker image tag web:1.0.0 docker.io/dimakurd/web:1.0.0

docker login

docker push dimakurd/web:1.0.0
