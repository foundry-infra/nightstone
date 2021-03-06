# install datadog monitoring

External monitoring for easy observability into platform components. 

# Setup

Create the required secrets for datadog (sub for real values):

```powershell
kubectl create secret generic -n platform --from-literal=token=$DD_CLUSTER_AGENT_TOKEN dd-cluster-agent-token
kubectl create secret generic -n platform --from-literal=api-key=$DD_API_KEY dd-api-key
```

Then setup and install the chart from manifests:

```powershell
helm repo add datadog https://helm.datadoghq.com
curl https://raw.githubusercontent.com/DataDog/helm-charts/master/charts/datadog/values.yaml > base.values.yaml
helm template datadog datadog/datadog -f ./base.values.yaml -f ./overrides.values.yaml > datadog-base.yaml
kustomize build > datadog-kustomized.yaml
kubectl apply -f ./datadog-kustomized.yaml
```

