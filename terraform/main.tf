resource "azurerm_resource_group" "brady" {
  name     = "brady"
  location = "UK South"
}


resource "azurerm_service_plan" "bradyweather" {
  name                = "bradyweather"
  resource_group_name = azurerm_resource_group.brady.name
  location            = "UK South"
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_linux_web_app" "bradyweatherjml" {
  name                = "bradyweatherjml"
  resource_group_name = azurerm_resource_group.brady.name
  location            = azurerm_service_plan.bradyweather.location
  service_plan_id     = azurerm_service_plan.bradyweather.id

  site_config {

  }
  app_settings = {
    WEBSITE_WEBDEPLOY_USE_SCM = true
  }
}
