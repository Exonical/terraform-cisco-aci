module "tenant" {
  source       = "../../modules/tenant"
  tenant_name  = "DevTenant"
  description  = "Tenant for Development"
}

module "vrfs" {
  source      = "../../modules/vrf"
  for_each    = var.vrfs
  tenant_dn   = module.tenant.tenant_id
  vrf_name    = each.value.name
  description = each.value.description
}

module "app_profiles" {
  source       = "../../modules/app_profile"
  for_each     = var.application_profiles
  tenant_dn    = module.tenant.tenant_id
  app_profile_name   = each.value.name
  description        = each.value.description
}

module "bridge_domains" {
  source      = "../../modules/bridge_domain"
  for_each    = var.bridge_domains
  tenant_dn   = module.tenant.tenant_id
  vrf_dn      = module.vrfs[each.value.vrf].vrf_dn
  bd_name     = each.value.name
  description = each.value.description
}

module "subnets" {
  source       = "../../modules/subnet"
  for_each     = var.subnets
  bd_dn        = module.bridge_domains[each.value.bd].bd_dn
  subnet_ip    = each.value.ip
  description  = each.value.description
}

module "epgs" {
  source              = "../../modules/epg"
  for_each            = var.epgs
  app_profile_dn      = module.app_profiles[each.value.app_profile].app_profile_dn
  epg_name            = each.value.name
  description         = each.value.description
}
