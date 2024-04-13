output "vrf_ids" {
  value = { for vrf in aci_vrf.this : vrf.name => vrf.id }
  description = "Map of VRF names to their IDs"
}

output "bridge_domain_ids" {
  value = { for bd in aci_bridge_domain.this : bd.value.name => bd.id }
  description = "Map of Bridge Domain names to their IDs"
}

output "epg_ids" {
  value = { for epg in aci_application_epg.this : epg.value.name => epg.id }
  description = "Map of EPG names to their IDs"
}
