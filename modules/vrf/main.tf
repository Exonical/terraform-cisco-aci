resource "aci_vrf" "vrf" {
  tenant_dn   = var.tenant_dn
  name        = var.vrf_name
  description = var.description
}

output "vrf_dn" {
  value = aci_vrf.vrf.dn
}
