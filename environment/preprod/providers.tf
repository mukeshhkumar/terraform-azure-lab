terraform = {
  required_providers = {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.7.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "mk-rg"
    storage_account_name = "mkstorage123"
    container_name = "prod-tfstate"
    key = "terraform.tfstate"
 }
}fmr

provider "azurerm" {
  features = {}
}
