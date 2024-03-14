terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.95.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-sandor"
    storage_account_name = "sanhorvastg1113"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }

}
