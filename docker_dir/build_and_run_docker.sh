#!/bin/bash

docker buildx build --tag web:1.0.0 .

docker run -d --name web_container -p 8000:8000 web:1.0.0

echo server available at 127.0.0.1:8000

echo container logs below

docker logs -f web_container
