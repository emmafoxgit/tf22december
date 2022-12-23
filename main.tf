     terraform {
       backend "remote" {
         # The name of your Terraform Cloud organization.
         organization = "emmafoxorg"

         # The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
           name = "tf22december"
         }
       }
     }

provider "azurerm" {
   features {}
}

resource "azurerm_resource_group" "demo" {
  name = var.resource_group_name
  location = var.resource_group_location
  
}