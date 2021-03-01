# Add Goldengulp policy

```powershell
vault policy write goldengulp-foundry .\goldengulp-foundry-policy.hcl
```

# Add Goldengulp 

```powershell
vault write auth/kubernetes/role/goldengulp-foundry bound_service_account_names=foundry-vtt bound_service_account_namespaces=goldengulp  policies=goldengulp-foundry ttl=24h
```
