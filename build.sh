#!/bin/bash

export IMAGE_TAG=20231024-1

docker build --target=stardust -t 413636892216.dkr.ecr.eu-north-1.amazonaws.com/stardust:$IMAGE_TAG .
docker build --target=stardust-nginx -t 413636892216.dkr.ecr.eu-north-1.amazonaws.com/stardust-nginx:$IMAGE_TAG
docker push 413636892216.dkr.ecr.eu-north-1.amazonaws.com/stardust:$IMAGE_TAG
docker push 413636892216.dkr.ecr.eu-north-1.amazonaws.com/stardust-nginx:$IMAGE_TAG

