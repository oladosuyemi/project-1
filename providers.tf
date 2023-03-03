# Azure Provider
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.57.0"
    }
    
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.45.0"
    }

    azuread = {
      source = "hashicorp/azuread"
      version = "2.36.0"
    }
    }
  }



provider "aws" {
  # Configuration options
  region = "us-east-1"

}


provider "azuread" {
  # Configuration options
  features {}
  
}
provider "azurerm" {
  # Configuration options
  features {}

}
