terraform {
  required_version = ">= 1.7.0"

#  backend "s3" {
#    bucket = "my-terraform-state-bucket"
#    key    = "global/terraform.tfstate"
#    region = "us-west-2"
    # Include additional backend configurations as necessary.
#  }

  required_providers {
    aci = {
      source  = "CiscoDevNet/aci"
      version = "~> 2.14.0"
    }
  }
}

provider "aci" {
  url      = "https://apic.example.com"
  username = var.aci_username
  password = var.aci_password
  # Include other necessary configurations.
}

module "environment" {
  source = "./environments/${terraform.workspace}"
}