
data "azurerm_client_config" "current" {}


resource "azurerm_key_vault" "key-v-sanhorva" {
  name                        = "key-v-sanhorva"
  location                    = var.rg_location
  resource_group_name         = var.rg_name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get", "List",
    ]

    secret_permissions = [
      "Get", "List",
    ]

    storage_permissions = [
      "Get", "List",
    ]
  }
}