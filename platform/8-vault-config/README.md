# vault

These docs are for adding configuration to vault.

# Login locally

Connect to vault locally:

```powershell
$env:VAULT_ADDR="https://secrets.mackenzieclark.codes:8200" 
vault login 
```

# Enable the KV

```powershell
vault secrets enable -path=foundry kv-v2
```

# Enabling Kubernetes Authentication

Enable kubernetes auth:

```powershell
vault auth enable kubernetes
```

# Configure authentication method 

Shell into the vault-0 pod:

```powershell
kubectl exec -it -n platform vault-0 -- sh
```

Setup auth:

```powershell
vault write auth/kubernetes/config token_reviewer_jwt="$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)" kubernetes_host="https://$KUBERNETES_PORT_443_TCP_ADDR:443" kubernetes_ca_cert=@/var/run/s
ecrets/kubernetes.io/serviceaccount/ca.crt
```
