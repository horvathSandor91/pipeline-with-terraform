
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}


module "KeyVault" {
  source      = "./Modules/KeyVault"
  rg_location = var.rg_location
  rg_name     = var.rg_name

}

module "subnet" {
  source        = "./Modules/subnet"
  rg_location   = var.rg_location
  rg_name       = var.rg_name
  address_space = var.address_space
  dns_servers   = var.dns_servers
}
