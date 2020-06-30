#!/bin/sh
kubectl create ns argocd
kubectl apply -f argocd/boot.yaml -n argocd
kubectl apply -f argocd/projects -n argocd
kubectl apply -f argocd/apps -n argocd
