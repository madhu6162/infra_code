module "azurerm_resource_group" {
  source = "../child_module/azurerm_resource_group"
  rg     = var.rg
}

module "azurerm_stg" {
  depends_on = [module.azurerm_resource_group]
  source     = "../child_module/azurerm_storage_group"
  stgg       = var.stgg
}

module "vnet" {
  depends_on = [module.azurerm_resource_group]
  source     = "../child_module/azurerm_vnet"
  vnet1      = var.vnet12

}

# module "sub_net" {
#   depends_on = [module.vnet]
#   source     = "../child_module/azurerm_subnet"
#   sub_net    = var.sub_net

# }

module "nic" {
  source     = "../child_module/azurerm_nic"
  depends_on = [module.sub_net, module.pip ]
  nic        = var.nic

}

module "pip" {
  source     = "../child_module/azurerm_pip"
  depends_on = [module.azurerm_resource_group]
  pip        = var.pip
}

module "vm" {
  source     = "../child_module/azurerm_linux_vm"
  depends_on = [module.nic]
  vm         = var.vm
}
