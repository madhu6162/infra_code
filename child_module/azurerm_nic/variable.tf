variable "nic" {
  type = map(object({
    nic_name                  = string
    location              = string
    resource_group_name   = string
   ip_configuration_name  = string
 
  }))

}


