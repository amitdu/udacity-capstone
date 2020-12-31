# set -eux
# set -o pipefail
# takes argument as build no to update the app.yaml via sed
DEPLOYMENT_PATH="infra/k8/app.yaml"
echo "<< There are total 4 pods are running as per app.yaml and maximum surge 1 or 25% is set>>"
echo "<<<<<< Before Deployemnt >>>>>>"
kubectl get pods
echo "<<<<<<< Deploymennts going to start. >>>>>>"
template=`cat ${DEPLOYMENT_PATH} | sed "s/latest/v$1/g"`
echo "$template" | kubectl apply -f -
echo "<<<<<<< Deployment started... >>>>>>"
kubectl get pods
sleep 10
echo "<<<<<<< 10s later >>>>>>"
kubectl get pods
