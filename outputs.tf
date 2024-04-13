output "vrf_ids" {
  value = module.aci_network.vrf_ids
  description = "Map of VRF names to their IDs"
}

output "bridge_domain_ids" {
  value = module.aci_network.bridge_domain_ids
  description = "Map of Bridge Domain names to their IDs"
}

output "epg_ids" {
  value = module.aci_network.epg_ids
  description = "Map of EPG names to their IDs"
}
