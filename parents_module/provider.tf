terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.48.0"
    }

  }
  backend "azurerm" {
    resource_group_name = "madhu_rg"
    storage_account_name = "jhola12"
    container_name = "statefile"
    key =  "mterraform.tfstate"
    
  }
}

provider "azurerm" {
  features {}
  subscription_id = "00ad737d-c579-441c-8386-0551f3fc4bf9"
}
