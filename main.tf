provider "azurerm" {
  features {}
  subscription_id   = "74f18b4b-73a2-49ee-a8b5-9e6f8c8ec835"
  tenant_id         = "8d8d4417-60ec-4a46-ae73-5710d3caca54"
  client_id         = "12703015-a0a4-4368-916e-0ae47e8d2dc0"
  client_secret     = "CDg8Q~Hx6Gu7mM1E3-jN~u3O-1~jPjv5SyrwQb4G"
}

module "virtual_machine" {
  source              = "./modules/vm"
  resource_group_name = var.resource_group_name
  location            = var.location
  // Add any other variables needed by the VM module
}

module "key_vault" {
  source              = "./modules/keyvault"
  resource_group_name = var.resource_group_name
  location            = var.location
  // Add any other variables needed by the KeyVault module
}

module "storage_account" {
  source              = "./modules/storage_account"
  resource_group_name = var.resource_group_name
  location            = var.location
  // Add any other variables needed by the Storage Account module
}
