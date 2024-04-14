vrfs = {
  "ProdVRF1" = {
    name        = "ProdVRF1"
    description = "VRF for Production 1"
  },
  "ProdVRF2" = {
    name        = "ProdVRF2"
    description = "VRF for Production 2"
  }
}

application_profiles = {
  "ProdAppProfile1" = {
    name        = "ProdAppProfile1"
    description = "Application Profile for Production 1"
  },
  "ProdAppProfile2" = {
    name        = "ProdAppProfile2"
    description = "Application Profile for Production 2"
  }
}

bridge_domains = {
  "ProdBD1" = {
    name        = "ProdBD1"
    description = "Bridge Domain for Production 1"
    vrf         = "ProdVRF1"
  },
  "ProdBD2" = {
    name        = "ProdBD2"
    description = "Bridge Domain for Production 2"
    vrf         = "ProdVRF2"
  }
}

subnets = {
  "Subnet1" = {
    ip          = "10.0.0.1/22"
    description = "Main Subnet for Production 1"
    bd          = "ProdBD1"
  },
  "Subnet2" = {
    ip          = "10.0.1.1/22"
    description = "Main Subnet for Production 2"
    bd          = "ProdBD2"
  }
}

epgs = {
  "ProdEPG1" = {
    name        = "ProdEPG1"
    description = "EPG for Production 1"
    app_profile = "ProdAppProfile1"
  },
  "ProdEPG2" = {
    name        = "ProdEPG2"
    description = "EPG for Production 2"
    app_profile = "ProdAppProfile2"
  }
}
