Install tekton into the cluster:

```powershell
curl https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml > tekton-base.yaml
curl -L https://github.com/tektoncd/dashboard/releases/latest/download/tekton-dashboard-release.yaml > tekton-dashboard-base.yaml
kubectl apply -f ./tekton-base.yaml
kubectl apply -f ./tekton-dashboard-base.yaml
```

Update the configmap for microk8s storage:

```powershell
kubectl apply -f ./config-artifact-pvc.yaml
```

# experiments

Create the docker config secret:
```powershell
kubectl create secret generic regcred -n tekton-pipelines --type=kubernetes.io/dockerconfigjson --from-file=.dockerconfigjson=<path/to/.docker/config.json>
```