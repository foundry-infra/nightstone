# cert-manager

This directory contains the installation procedure for installing cert-manager and adding the certificate issuers.

# Bootstrapping

Install cert-manager from helm chart. 

```powershell
helm repo add jetstack https://charts.jetstack.io
helm repo update
helm template cert-manager jetstack/cert-manager -n platform -f ./values.yaml
kubectl apply -f ./cert-manager-base.yaml
```

Create the DigitalOcean API Token secret in Kubernetes. See LastPass.

```powershell
kubectl apply -f ./digitalocean-api-token-secret.yaml
```

Next create the cert-manager issuers:

```powershell
kubectl apply -f ./staging-issuer.yaml
kubectl apply -f ./prod-issuer.yaml
```

