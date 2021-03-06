# Add frost-wind-terror policy

```powershell
vault policy write frost-wind-terror-foundry .\frost-wind-terror-foundry-policy.hcl
```

# Add frost-wind-terror kubernetes auth 

```powershell
vault write auth/kubernetes/role/frost-wind-terror-foundry bound_service_account_names=foundry-vtt bound_service_account_namespaces=frost-wind-terror  policies=frost-wind-terror-foundry ttl=24h
```
