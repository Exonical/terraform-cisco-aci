resource "aci_vrf" "this" {
  count      = length(var.vrfs)
  tenant_dn  = var.tenant_dn
  name       = var.vrfs[count.index].name
  description = var.vrfs[count.index].description
}

resource "aci_bridge_domain" "this" {
  for_each   = { for idx, vrf in var.vrfs : idx => vrf.bridge_domains... }
  tenant_dn  = var.tenant_dn
  name       = each.value.name
  description = each.value.description
  relation_fv_rs_ctx = aci_vrf.this[each.key].id
}

resource "aci_subnet" "this" {
  for_each   = { for bd_idx, bd in { for idx, vrf in var.vrfs : idx => vrf.bridge_domains... } : bd_idx => bd }
  parent_dn  = aci_bridge_domain.this[each.key].id
  ip         = each.value.subnet
  description = "Subnet for ${each.value.name}"
  scope      = "public"
}

resource "aci_application_epg" "this" {
  for_each           = { for bd_idx, bd in { for idx, vrf in var.vrfs : idx => vrf.bridge_domains... } : bd_idx => bd.epgs... }
  application_profile_dn = var.app_profile_dn
  name                = each.value.name
  relation_fv_rs_bd_to_net = aci_bridge_domain.this[each.key].id
}
