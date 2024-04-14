# Configure the Cisco ACI Provider
terraform {
  required_providers {
    aci = {
      source  = "CiscoDevNet/aci"
      version = "~> 2.14.0"  # Specify the version you want to use
    }
  }
}

provider "aci" {
  url      = "https://apic.example.com"  # APIC URL
  username = "admin"                    # APIC Username
  password = "password"                 # APIC Password
  insecure = true                       # Skip SSL certificate verification
}


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
