resource "aci_bridge_domain" "bd" {
  tenant_dn   = var.tenant_dn
  vrf_dn      = var.vrf_dn
  name        = var.bd_name
  description = var.description
}

output "bd_dn" {
  value = aci_bridge_domain.bd.dn
}
