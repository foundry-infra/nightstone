# ingress

A required update to the daemonset and the TCP configmap to allow port 8200 to Vault.  

```powershell
kubectl apply -f ./port.yaml
```

# dns

This sets up kubernetes DNS, and allows internal communication to normally public services. 

```powershell
kubectl apply -f ./dns.yaml
```

## What?

When services need to reach each other on the internal network, these host records are needed. This includes services that are normally exposed publicly e.g. foundry and keycloak. This is because the public IP is not accessible from within the network.
