terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.48.0"
    }
  }
}

provider "azurerm" {
  features {}
}
