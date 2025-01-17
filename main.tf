provider "azurerm" {
  features {}
  subscription_id = "92d87465-6e68-4e6f-af1b-b269ae7fcacf"
}

# Define the resource group
resource "azurerm_resource_group" "example" {
  name     = "JayendraTestRG"
  location = "East US"
}

# Define the Azure Cache for Redis
resource "azurerm_redis_cache" "example" {
  name                = "JP-Test-Redis-Cache"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  capacity            = 1               # Basic tier capacity is 1
  family              = "C"             # C means "Basic" tier
  sku_name            = "Basic"         # Basic tier SKU
}
