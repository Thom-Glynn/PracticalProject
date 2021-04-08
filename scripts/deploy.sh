#!/bin/bash

# kubectl delete all --all -n cne 
cd kubernetes/
kubectl delete pods --all -n cne
kubectl apply -f namespace.yaml
kubectl apply -f nginx-conf.yaml
kubectl apply -f nginx-lb.yaml
kubectl apply -f nginx.yaml
kubectl apply -f flask-app.yaml
kubectl apply -f flask-cip.yaml
kubectl apply -f backend-cip.yaml
kubectl apply -f backend.yaml
kubectl describe service nginx-lb -n cne
