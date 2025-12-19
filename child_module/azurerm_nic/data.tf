data "azurerm_public_ip" "pip" {
  name                = "madhu_pip1"
  resource_group_name = "madhu1rg"
}



data "azurerm_subnet" "subnet_data_block" {
  name                 = "frontend"
  virtual_network_name = "madhuvnet1"
  resource_group_name  = "madhu1rg"

}

