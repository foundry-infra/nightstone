# kubernetes-dashboard

Building on the microk8s add-on: updates to the dashboard. 

# RBAC

Forcefully delete the ClusterRoleBinding and add it back:

```powershell
kubectl delete clusterrolebinding kubernetes-dashboard
kubectl apply clusterrolebinding kubernetes-dashboard -f ./clusterrolebinding.yaml
```

## Expose Service

Start the proxy:

```powershell
kubectl proxy
```

Visit the proxy site e.g. [see all the pods here](http://127.0.0.1:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#/pod?namespace=platform).

## Headlamp

```powershell
kubectl apply -f https://raw.githubusercontent.com/kinvolk/headlamp/master/kubernetes-headlamp.yaml --dry-run=client -o yaml > headlamp-base.yaml
kustomize build . > ./headlamp-kustomized.yaml
kubectl apply -f ./headlamp-kustomized.yaml
```

Later, add DNS for port 4466 to port 4466 of this service.
