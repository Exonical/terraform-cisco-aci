resource "aci_application_epg" "epg" {
  application_profile_dn = var.app_profile_dn
  name                   = var.epg_name
  description            = var.description
}

output "epg_dn" {
  value = aci_application_epg.epg.dn
}
