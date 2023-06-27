# minikube-poc

Install minikube

//Ensure that the daemon.json is empty

eval $(minikube docker-env)

minikube start

kubectl apply -f deployment-config.yml 

check services:
kubectl get services

delete services
kubectl delete services {service name}

check deploys
kubectl get deployments

describe deployment
kubectl describe deployment {deployment-name}

check pods
kubectl get pods

launch dashboard
minikube dashboard