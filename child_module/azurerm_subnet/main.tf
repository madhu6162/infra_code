resource "azurerm_subnet" "sub_net" {
  for_each            = var.sub_net
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  virtual_network_name = each.value.vnet_name
  address_prefixes    = each.value.address_prefixes
}
