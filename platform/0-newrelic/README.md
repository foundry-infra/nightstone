```powershell

```

Create the secret with the license key.

```powershell
kubectl create secret generic newrelic-license-key -n platform --from-literal=newrelic-license-key=fjlkdsfjlsdkj
```

Bake and install:

```powershell
helm repo add newrelic https://helm-charts.newrelic.com
helm template newrelic-bundle newrelic/nri-bundle -f ./overrides.values.yaml > newrelic-base.yaml
kustomize build > newrelic-kustomized.yaml
kubectl apply -f ./newrelic-kustomized.yaml
```
