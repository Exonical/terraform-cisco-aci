provider "aci" {
  url      = "https://apic-url"
  username = "admin"
  password = "password"
  insecure = true
}

module "aci_network" {
  source            = "./modules/aci_network"
  tenant_dn         = aci_tenant.example_tenant.id
  app_profile_dn    = aci_app_profile.example_app_profile.id
  vrfs              = var.vrfs
}
