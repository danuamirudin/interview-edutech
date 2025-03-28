
# NGINX Ingress Controller Installation Guide

## Step 1: Add the NGINX Ingress Controller Helm Repository

First, add the official NGINX Ingress Helm repository to your Helm setup. This allows you to install the Ingress Controller using Helm.

```bash
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
```

## Step 2: Modify `values.yaml`

## Step 3: Install NGINX Ingress Controller Using Helm

### Install the NGINX Ingress Controller:

```bash
helm install nginx-ingress ingress-nginx/ingress-nginx -f values.yaml --namespace ingress-nginx --create-namespace
```

