# keycloak

This directory contains the installation procedure for the Keycloak IDP. 

# Bootstrapping 

First time setup only. Create the two secrets in Kubernetes before installing these manifests. See LastPass.

Two files should be written to disk (ignores by git):

- `keycloak-secret.yaml`
- `keycloak-postgresql-secret.yaml`

Next render the keycloak chart as manifests:

```powershell
helm template --version "2.2.1" keycloak bitnami/keycloak -n platform -f ./values.yaml > keycloak-base.yaml

```

The output will be a new file: `keycloak-base.yaml`. Check this file in.

# Upgrading

```powershell
kubectl apply -f ./keycloak-base.yaml
```

# Forceful Upgrading

If there is a problem with upgrading the StatefulSets, one can do a force upgrade by deleting and creating again.

```powershell
kubectl delete -f ./keycloak-base.yaml
kubectl apply -f ./keycloak-base.yaml
```

