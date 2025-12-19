variable "sub_net" {
  type = map(object({
    name                = string
    resource_group_name = string
    vnet_name           = string
    address_prefixes    = list(string)

  }))

}
