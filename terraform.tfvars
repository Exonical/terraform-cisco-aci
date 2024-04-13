vrfs = [
  {
    name        = "Core_VRF",
    description = "Central VRF for all core services",
    bridge_domains = [
      {
        name        = "Core_BD",
        description = "Bridge Domain for Core Services",
        subnet      = "10.10.10.1/24",
        epgs = [
          { name = "Core_EPG" },
          { name = "Management_EPG" },
          { name = "Compute_EPG" }
        ]
      },
      {
        name        = "Management_BD",
        description = "Bridge Domain for Management Services",
        subnet      = "10.10.20.1/24"
      },
      {
        name        = "Compute_BD",
        description = "Bridge Domain for Compute Services",
        subnet      = "10.10.30.1/24"
      }
    ]
  },
  {
    name        = "VDI1_VRF",
    description = "VRF for VDI 1",
    bridge_domains = [
      {
        name        = "VDI1_BD",
        description = "Bridge Domain for VDI 1",
        subnet      = "10.20.10.1/24",
        epgs = [
          { name = "VDI1_A_EPG" },
          { name = "VDI1_B_EPG" }
        ]
      }
    ]
  },
  {
    name        = "VDI2_VRF",
    description = "VRF for VDI 2",
    bridge_domains = [
      {
        name        = "VDI2_BD",
        description = "Bridge Domain for VDI 2",
        subnet      = "10.30.10.1/24",
        epgs = [
          { name = "VDI2_A_EPG" },
          { name = "VDI2_B_EPG" }
        ]
      }
    ]
  }
]
