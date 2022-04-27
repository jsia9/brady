resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "UK South"
}

resource "azurerm_storage_account" "example" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    brady = "interview"
    environment = "dev"
  }
}

module "RG" {
  source = "./modules/RG"
  rgname = var.rgname
  location = var.location
}
