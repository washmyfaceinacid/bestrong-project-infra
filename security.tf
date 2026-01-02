data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  name                          = "kv-${var.project_name}"
  location                      = azurerm_resource_group.main.location
  resource_group_name           = azurerm_resource_group.main.name
  tenant_id                     = data.azurerm_client_config.current.tenant_id
  sku_name                      = "standard"
  public_network_access_enabled = false
}

resource "azurerm_role_assignment" "acr_pull" {
  scope                = azurerm_container_registry.acr.id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_linux_web_app.app.identity[0].principal_id
}
