set -eux
set -o pipefail
# takes argument as build no to update the app.yaml via sed
DEPLOYMENT_PATH="infra/k8/app.yaml"

template=`cat ${DEPLOYMENT_PATH} | sed "s/latest/$1/g"`
echo "$template" | kubectl apply -f -