output "resource_group_name" {
  value = {
    rg_name = azurerm_resource_group.rg.name
  }
}
