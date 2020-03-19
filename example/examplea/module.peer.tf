module "peer" {
  source           = "../../"
  resource_group_a = data.azurerm_resource_group.example.name
  resource_group_b = data.azurerm_resource_group.example.name
  vnet_name_a      = "examplea"
  vnet_name_b      = "exampleb"
}
