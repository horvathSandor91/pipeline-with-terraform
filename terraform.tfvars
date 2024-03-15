sa_name       = "sasanhorva013"
rg_location   = "West Europe"
rg_name       = "rg-sanhorva013"
address_space = ["20.0.0.0/16"]
dns_servers   = ["20.0.0.4", "20.0.0.5"]
bkstrgrg      = "rg-sanhorva"
bkstrg        = "sasanhorva"
bkcontainer   = "tfstate"
bkstrgkey     = "terraform.tfstate"

subnets = {
  subnet6 = {
    name             = "subnet6"
    address_prefixes = ["20.0.1.0/24"]
  }
  subnet7 = {
    name             = "subnet7"
    address_prefixes = ["20.0.2.0/24"]
  }
  bastion_subnet = {
    name             = "AzureBastionSubnet"
    address_prefixes = ["20.0.3.0/24"]
  }
}
  