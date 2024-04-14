variable "tenant_dn" {
  type = string
}

variable "app_profile_name" {
  type = string
}

resource "aci_application_profile" "this" {
  tenant_dn = var.tenant_dn
  name      = var.app_profile_name
}

output "app_profile_dn" {
  value = aci_application_profile.this.dn
}
