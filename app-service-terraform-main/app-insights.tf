

resource "azurerm_log_analytics_workspace" "appinsightsDev" {
  name                = "workspace-test"
  location            = var.location
  resource_group_name = var.rggroup
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_application_insights" "appinsightsDev" {
  name                = "tf-test-appinsights"
  location            = var.location
  resource_group_name = var.rggroup
  workspace_id        = azurerm_log_analytics_workspace.appinsightsDev.id
  application_type    = "web"
}


output "app_id" {
  value = azurerm_application_insights.appinsightsDev.app_id
}