resource "aci_tenant" "tenant" {
  name        = var.tenant_name
  description = var.description
}

output "tenant_id" {
  value = aci_tenant.tenant.id
}
