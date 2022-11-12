terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
   backend "azurerm" {
        resource_group_name  = "tfstate"
        storage_account_name = "tfstate24948"
        container_name       = "stacccontainer"
        key                  = "terraform.tfstate"
    }
}

provider "azurerm" {
  features {}
}
 