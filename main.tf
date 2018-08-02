provider "azurerm" {
subscription_id = "${var.subscription_id}"
}

resource "azurerm_resource_group" "SARG" {
  name = "storageaccountrg"
  location = "${var.location}"
}

resource "azurerm_storage_account" "AZSA" {
  name = "insertstorageaccount"
  resource_group_name = "${azurerm_resource_group.SARG.name}"
  location = "${var.location}"
  account_tier = "Standard"
  account_replication_type = "GRS"
}
