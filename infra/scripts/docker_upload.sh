#!/usr/bin/env bash
set -eux
set -o pipefail
# It takes two arguments 1. BUILD_NO 2. ECR Regitry URL

# dockerpath=<your docker ID/path>
dockerpath=nest-app:v$1

# Authenticate ECR & tag
echo "Docker ID and Image: $dockerpath"
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin $2
docker tag $dockerpath $2/nest-app:v$1

# Push image to a ECR repository
docker push $2/nest-app:v$1
