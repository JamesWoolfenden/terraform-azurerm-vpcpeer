resource "azurerm_resource_group" "example" {
  name     = "examplea"
  location = "uksouth"
}

module "networka" {
  source           = "JamesWoolfenden/vnet/azurerm"
  version          = "0.0.24"
  address_prefixes = ["10.2.0.0/16"]
  names            = ["web", "app", "data"]
  vnet = {
    name          = "examplea"
    address_space = ["10.2.0.0/16"]
  }
  rules          = var.rules
  resource_group = azurerm_resource_group.example
  common_tags    = var.common_tags
}

module "networkb" {
  source           = "JamesWoolfenden/vnet/azurerm"
  version          = "0.0.24"
  address_prefixes = ["10.1.0.0/16"]
  names            = ["web", "app", "data"]
  vnet = {
    name          = "exampleb"
    address_space = ["10.1.0.0/16"]
  }
  rules          = var.rules
  resource_group = azurerm_resource_group.example
  common_tags    = var.common_tags
}