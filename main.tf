# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_virtual_network" "vnet1" {
  name     = "vnet1"
  location = "westus2"
  resource_group_name = "learn-8124233b-9513-494f-8387-f958fcfc5b3f"
  address_space = [ "10.0.0.0/24" ]
}
