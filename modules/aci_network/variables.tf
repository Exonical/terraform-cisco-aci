variable "tenant_dn" {
  description = "DN of the Tenant"
  type        = string
}

variable "app_profile_dn" {
  description = "DN of the Application Profile"
  type        = string
}

variable "vrfs" {
  description = "List of VRFs with their Bridge Domains and nested EPGs"
  type = list(object({
    name        = string
    description = string
    bridge_domains = list(object({
      name        = string
      description = string
      subnet      = string
      epgs = list(object({
        name = string
      }))
    }))
  }))
}
