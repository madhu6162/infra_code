rg = {
  rg1 = {
    resource_group_name     = "madhu1rg"
    location = "centralindia"
  }
  rg2 = {
       resource_group_name     = "madhu2rg"
    location = "eastus"
  }
}

stgg = {
  stg1 = {
    name                     = "madhustg1"
    resource_group_name      = "madhu1rg"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

# vnet = {
#   vnet1 = {
#     vnet_name           = "madhuvnet1"
#     location            = "centralindia"
#     resource_group_name = "madhu1rg"
#     address_space       = ["10.0.0.0/16"]



#   }
# }

sub_net = {
  sub_net1 = {
    name        = "frontend"
    resource_group_name = "madhu1rg"
    vnet_name           = "madhuvnet1"
    address_prefixes    = ["10.0.1.0/24"]
  }
}

nic = {
  nic1 = {
    nic_name              = "madhu_nic1"
    location              = "centralindia"
    resource_group_name   = "madhu1rg"
    ip_configuration_name = "internal"

  }
}

pip = {
  pip1 = {
    pip_name            = "madhu_pip1"
    resource_group_name = "madhu1rg"
    location            = "centralindia"
    allocation_method   = "Static"
  }
}

vm = {
  vm1 = {
    name                = "madhuvm1"
    resource_group_name = "madhu1rg"
    location            = "centralindia"
    size                = "Standard_F2"
    admin_username      = "adminuser"
    admin_password      = "madhu@123"

  }
}


vnet12 ={
  vnet1={
    vnet_name           = "madhuvnet2"
    location            = "centralindia"
    resource_group_name = "madhu1rg"
    address_space       = ["10.0.0.0/16"]
    subnets = {
      subnet1={
        name = "madhusubnet1"
        address_prefixes = ["10.0.1.0/24"]
      }
    }
  }
}
