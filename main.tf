provider "azurerm" {
subscription_id = "${var.subscription_id}"
}

resource "azurerm_resource_group" "StorageAcountRG" {
  name = "StorageAcountRG"
  location = "${var.location}"
}
