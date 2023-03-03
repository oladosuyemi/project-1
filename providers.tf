# Azure Provider
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.57.0"
    }
  }
}

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.46.0"
    }
  }
}

terraform {
  required_providers {
    azuread = {
      source = "hashicorp/azuread"
      version = "2.36.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  features {}
}


provider "azurerm" {
  # Configuration options
  region = "West US"
  features {}
}

provider "azuread" {
  # Configuration options
  region = "West US"
  features {}
}
