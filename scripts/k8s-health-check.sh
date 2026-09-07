#!/bin/bash

echo "=================================="
echo " Kubernetes Cluster Health Check"
echo "=================================="

echo
echo "1. Checking Nodes"
kubectl get nodes -o wide

echo
echo "2. Checking All Pods"
kubectl get pods -A

echo
echo "3. Checking Kubernetes System Pods"
kubectl get pods -n kube-system

echo
echo "4. Checking Services"
kubectl get svc -A

echo
echo "5. Checking Cluster Information"
kubectl cluster-info

echo
echo "=================================="
echo " Health Check Completed"
echo "=================================="
