# foundry helm install

For installing foundry vtt with helm. These manifests were written by hand.

# Bootstrap

```powershell
kubectl apply -f ./deployment.yaml
kubectl apply -f ./service.yaml
kubectl apply -f ./ingress.yaml
```
