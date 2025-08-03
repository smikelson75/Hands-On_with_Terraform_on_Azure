terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 3.43.0"
    }
  }
  cloud {
    organization = "acloudguru-learn"

    workspaces {
      name = "Hands-On_with_Terraform_on_Azure"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "azurerm_resource_group" "rg" {
  name     = "813-5c7f0903-hands-on-with-terraform-on-azure"
  location = "East US"
}