terraform {
  backend "azurerm" {
    resource_group_name  = "rg-bestrong-tfstate"
    storage_account_name = "bestrongbackend1"
    container_name       = "tfstate"
    key                  = "bestrong.tfstate"
}
}