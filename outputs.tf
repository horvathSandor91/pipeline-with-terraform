
output "azure_subnet_id" {
  value = module.subnet.azure_subnet_id
}

output "bastion_pubip" {
  value = module.subnet.bastion_pubip
}
