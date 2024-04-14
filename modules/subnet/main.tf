resource "aci_subnet" "subnet" {
  parent_dn   = var.bd_dn
  ip          = var.subnet_ip
  description = var.description
}

output "subnet_dn" {
  value = aci_subnet.subnet.dn
}
