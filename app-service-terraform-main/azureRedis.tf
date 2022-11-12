
resource "azurerm_resource_group" "redis" {
 name = var.rggroup
 location = var.location
}



# NOTE: the Name used for Redis needs to be globally unique
resource "azurerm_redis_cache" "redis" {
  name                = "redis-cache2111111"
  location            = var.location
  resource_group_name = var.rggroup
  capacity            = 2
  family              = "C"
  sku_name            = "Standard"
  enable_non_ssl_port = false
  minimum_tls_version = "1.2"

  redis_configuration {
  }
}