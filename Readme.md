## Udacity Capstone Project

This project is part of my Udacity Nanodegree requirements.

## Project Overview

-CI/CD with Rolling Update
This project uses Jenkins as CI/CD tool for deployement of Docker container using Rolling Deployemnt. In Rolling Deployement startegy Kubernates creates additional pods with new Docker Image and wait to pass the health check for new application. After passing the health check only, It routes traffic to new application and destroy older pods. It help us to achieve zero downtime with more reliability.

-Autoscaling with EKS
This project uses private Elastic Container Registry (ECR) to store Docker images and AWS EKS Cluster to host application.

-Infrastructure as Code
It uses Cloudformation for automating EKS Infra creation.

### Project Structure

- `infra` : Build related scripts and files.
- `infra > cloudformation` : Cloudformation template for EKS Infra
- `infra > k8` : Kubernates connfig for app and deployments
- `infra > scripts` : Bash script for running cloudformation and Docker build
- `nest-app` : A Sample Nest.js application, using Jest as testing framework.

## Running Nest.js application

```bash
# development
$ npm run start

# watch mode
$ npm run start:dev

# production mode
$ npm run start:prod
```

## Test the Nest.js application

```bash
# unit tests
$ npm run test

# e2e tests
$ npm run test:e2e

# test coverage
$ npm run test:cov
```

## Scripts

- Go to `scripts` dir `cd infra/scripts` and `chmod +x *` to add execute permission
- Create EKS Infrastructure via CloudFormation
- Create Network Infrastructure First

* `./create-stack.sh <stack_name> ../cloudformation/network.cf.yml ../cloudformation/network.param.json` : creates the network stack
* `./create-stack.sh <stack_name> ../cloudformation/eks.cf.yml ../cloudformation/eks.param.json` : creates the EKS stack
* `./delete-stack.sh <stack_name>` : Deletes the <stack_name>

## Kubernates Commands
```bash
# Get Details of k8 cluster
kubectl get all

# Get Deployemnts 
kubectl get deployments

# Get Nodes
kubectl get nodes

# Get Pods
kubectl get pods

# See PODs logs , Identifier can be label, Id etc 
kubectl logs <pod_idenntifier>

```
