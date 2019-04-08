#!/usr/bin/env bash
# go to minikube context
kubectl config use-context minikube

#create the namespace, test
kubectl create ns test

#apply the yaml
kubectl apply -f ./manifests/test-role.yaml #the role
kubectl apply -f ./manifests/user-rolebinding.yaml #role binding

#go to MAGIC_USER context
kubectl config use-context $MAGIC_USER

kubectl get pod #bad experience

kubectl get pod -n=test