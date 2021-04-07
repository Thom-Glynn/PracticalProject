#!/bin/bash

# kubectl delete all --all -n cne 
cd kubernetes/
kubectl delete pods --all -n cne
kubectl apply -f namespace.yaml
kubectl apply -f nginx-conf.yaml
kubectl apply -f nginx-lb.yaml -f nginx.yaml -f flask-app.yaml -f flask-cip.yaml -f backend-cip.yaml -f backend.yaml
kubectl describe service nginx-lb -n cne