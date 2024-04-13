# ACI Network Module

This module is used to create VRFs, Bridge Domains, Subnets, and EPGs in a Cisco ACI environment. It is designed to handle complex, nested configurations.

## Inputs

- `tenant_dn`: Distinguished Name of the Tenant.
- `app_profile_dn`: Distinguished Name of the Application Profile.
- `vrfs`: A list of VRFs along with their associated Bridge Domains and nested EPGs.

## Outputs

- `vrf_ids`: Map of VRF names to their IDs.
- `bridge_domain_ids`: Map of Bridge Domain names to their IDs.
- `epg_ids`: Map of EPG names to their IDs.
