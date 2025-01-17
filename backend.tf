provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name   = "rg-terraform-state"
    storage_account_name  = "jpteststorageaccount"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}