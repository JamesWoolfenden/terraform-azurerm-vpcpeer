resource "azurerm_virtual_network_peering" "examplea" {
  name                      = "${var.peername}atob"
  resource_group_name       = var.resource_group_a
  virtual_network_name      = data.azurerm_virtual_network.examplea.name
  remote_virtual_network_id = data.azurerm_virtual_network.exampleb.id
}

resource "azurerm_virtual_network_peering" "exampleb" {
  name                      = "${var.peername}btoa"
  resource_group_name       = var.resource_group_b
  virtual_network_name      = data.azurerm_virtual_network.exampleb.name
  remote_virtual_network_id = data.azurerm_virtual_network.examplea.id
}

data "azurerm_virtual_network" "examplea" {
  name                = var.vnet_name_a
  resource_group_name = var.resource_group_a
}

data "azurerm_virtual_network" "exampleb" {
  name                = var.vnet_name_b
  resource_group_name = var.resource_group_b
}
