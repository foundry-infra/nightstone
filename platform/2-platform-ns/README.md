# platform namespace

This is a common namespace for all the new platform services to support the foundry runtimes.

# namespace

```powershell
kubectl apply -f ./namespace.yaml
```

## Why not kube-system?

Not a bad idea. I will consider this. Other microk8s services (like ingress) go in their own namespaces, but some (like kuberenetes-dashboard) do got kube-system.