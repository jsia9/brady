resource "azurerm_resource_group" "brady" {
  name     = "brady"
  location = "UK South"
}



resource "azurerm_static_site" "jmlbrady" {
  name                = "jmlbrady"
  resource_group_name = azurerm_resource_group.brady.name
  location            = "West Europe"

}
