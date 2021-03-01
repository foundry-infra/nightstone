$env:KEYCLOAK_ADMIN_PASSWORD=$(kubectl get secret -n platform keycloak -o jsonpath="{.data.admin-password}" | base64 -d)
$env:KEYCLOAK_MANAGEMENT_PASSWORD=$(kubectl get secret -n platform keycloak -o jsonpath="{.data.management-password}" | base64 -d)
$env:POSTGRESQL_PASSWORD=$(kubectl get secret -n platform keycloak-postgresql -o jsonpath="{.data.postgresql-password}" | base64 -d)
$env:POSTGRESQL_PVC=$(kubectl get pvc -n platform -l app.kubernetes.io/instance=keycloak,app.kubernetes.io/name=postgresql,role=primary -o jsonpath="{.items[0].metadata.name}")

echo "keycloak admin password: $env:KEYCLOAK_ADMIN_PASSWORD"
echo "keycloak management password: $env:KEYCLOAK_MANAGEMENT_PASSWORD"
echo "postgres password: $env:POSTGRESQL_PASSWORD"
echo "postgres pvc: $env:POSTGRESQL_PVC"
