terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.49.0"
    }
  }
}

provider "azurerm" {
  features {}
}
