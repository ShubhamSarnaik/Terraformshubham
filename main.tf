terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.69.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
subscription_id = "930b0843-6f87-476c-b4e5-4db055a4c1b5"
client_id = "691f1a95-125d-4e56-b2b0-6fdf790e4c1f"
client_secret = "5Ry8Q~KjPUUgLIqCluESFftnakBpOKxNRBRoSbcw"
tenant_id = "2f59ff7c-1b6c-4d8c-97f5-e1e9103f2f15"
features {}

}

resource "azurerm_resource_group" "app_grp" {

    name = "RG1"
    location = "Central India"

}


resource "azurerm_storage_account" "storage_account" {

    name = "storageshubham"
    resource_group_name = "RG1"
    location = "Central India"
    account_tier = "Standard"
    account_replication_type = "LRS"
  
}


