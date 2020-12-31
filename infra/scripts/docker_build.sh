#!/usr/bin/env bash
set -eux
set -o pipefail
# Build no as argument for tagging
cd nest-app && docker build -t nest-app:v$1 .

# test container locally
docker run -p 3000:3000 --name nest-app-v$1 nest-app:v$1
