module "peer" {
  source                   = "../../"
  resource_group_a         = azurerm_resource_group.example.name
  resource_group_b         = azurerm_resource_group.example.name
  azurerm_virtual_networka = module.networka.vnet
  azurerm_virtual_networkb = module.networkb.vnet
}
