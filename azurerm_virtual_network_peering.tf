resource "azurerm_virtual_network_peering" "examplea" {
  name                      = "${var.peername}atob"
  resource_group_name       = var.resource_group_a
  virtual_network_name      = var.azurerm_virtual_networka.name
  remote_virtual_network_id = var.azurerm_virtual_networkb.id
}

resource "azurerm_virtual_network_peering" "exampleb" {
  name                      = "${var.peername}btoa"
  resource_group_name       = var.resource_group_b
  virtual_network_name      = var.azurerm_virtual_networkb.name
  remote_virtual_network_id = var.azurerm_virtual_networka.id
}

variable "azurerm_virtual_networka" {
  type = object({
    name                = string,
    id                  = string,
    resource_group_name = string,
    address_space       = list(string),
    guid                = string,
  })
}

variable "azurerm_virtual_networkb" {
  type = object({
    name                = string,
    id                  = string,
    resource_group_name = string,
    address_space       = list(string),
    guid                = string,
  })
}

