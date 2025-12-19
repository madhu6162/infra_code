variable "rg" {
  type = map(object({
    resource_group_name = string
    location            = string
  }))
}

variable "stgg" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
}

# variable "vnet" {
#   type = map(object({
#     vnet_name           = string
#     location            = string
#     resource_group_name = string
#     address_space       = list(string)

#   }))

# }

variable "sub_net" {
  type = map(object({
    name        = string
    resource_group_name= string
    vnet_name           = string
    address_prefixes    = list(string)
  }))

}
variable "nic" {
  type = map(object({
    nic_name              = string
    location              = string
    resource_group_name   = string
    ip_configuration_name = string
  }))

}

variable "pip" {
  type = map(object({
    pip_name            = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))
}

variable "vm" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    size                = string
    admin_username      = string
    admin_password      = string
  }))

}

variable "vnet12" {
  type = map(object({
    vnet_name           = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    subnets = map(object({
      name             = string
      address_prefixes = list(string)
    }))

  }))
}

