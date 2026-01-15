terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
    region = "us-west-2"
}

provider "google" {
  project = "my-gcp-project-id"            
}


provider "azurerm" {
  features {}           # Azure Resource Manager
}

################################################################################
# features {} is mandatory for AzureRM provider. 
# It controls provider-level behaviors like deletion protection and recovery. 
# Even when empty, Terraform requires it to initialize the Azure provider.

###############################################################################
# project is specific to Google Cloud (GCP). top-level container. 
# Project = billing + IAM + resources boundary region  = "us-central1"

# Each cloud has its own top-level scope:
# | Cloud | Top-level Scope | Terraform Field   |
# | ----- | --------------- | ----------------- |
# | AWS   | Account         | (implicit)        |
# | GCP   | Project         | `project`         |
# | Azure | Subscription    | `subscription_id` |


