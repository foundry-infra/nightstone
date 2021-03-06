# oauth-proxy

I try out the helm kustomization strategy for bootrstrapping. Ideally this means a predictacble base, but lots of extra boilerplate for the kustomization to fix the apiversion and the ingress body.

# Bootstrap

Get the dump with helm template:

```powershell
helm repo add k8s-at-home https://k8s-at-home.com/charts/
helm repo update
helm template oauth2-proxy k8s-at-home/oauth2-proxy --version 5.0.0 -f .\values.yaml > ./oauth2-proxy-base.yaml
```

And fill in the gaps with Kustomize:

```powershell
kustomize build > ./oauth2-proxy-kustomized.yaml
kubectl apply -f ./oauth2-proxy-kustomized.yaml
```
