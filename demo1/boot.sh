#!/bin/sh
echo Creating namespace
kubectl create ns argocd
echo Applyin argocd/boot.yaml
kubectl apply -f argocd/boot.yaml -n argocd
echo Waiting for argocd-server or timeout of 5 minutes
kubectl wait deployments/argocd-server --for=condition=Ready --timeout=300s -n argocd
echo Applying argocd/projects
kubectl apply -f argocd/projects -n argocd
echo Applying argocd/apps
kubectl apply -f argocd/apps -n argocd
echo Connect to https://localhost:8080 after executing: kubectl port-forward svc/argocd-server -n argocd 8080:443
echo Login with user: admin password: $(kubectl get pods -n argocd -l app.kubernetes.io/name=argocd-server -o name | cut -d'/' -f 2)

