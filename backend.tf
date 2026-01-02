terraform {
  backend "azurerm" {
    resource_group_name  = "rg-bestrong-tfstate"
    storage_account_name = "bestrongbackend"
    container_name       = "tfstate"
    key                  = "bestrong.tfstate"
}
}