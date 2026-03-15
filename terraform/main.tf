terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "faf44dae-d08c-4e80-8453-f60d23f601d0"
  tenant_id       = "899789dc-202f-44b4-8472-a6d40f9eb440"
}
