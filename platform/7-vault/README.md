# vault

These docs are for installing and upgrading vault with helm.

# Bootstrap

```powershell
helm repo add hashicorp https://helm.releases.hashicorp.com/
helm repo update
helm template vault hashicorp/vault -n platform -f ./values.yaml > ./vault-base.yaml
kubectl apply -f ./vault-base.yaml
```

Afterwards, connect to vault to perform init and unseal. Store credentials in LastPass.
