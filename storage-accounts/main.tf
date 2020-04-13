locals {
  prefix = var.prefix != "" ? "${var.prefix}-" : ""
}

resource "random_string" "suffix" {
  length  = 4
  special = false
  upper   = false
  lower   = true
}

resource "azurerm_resource_group" "custom-managed-images" {
  name     = "${local.prefix}${var.resource_group_name}"
  location = var.location
}

resource "azurerm_storage_account" "custom-managed-images" {
  name                     = "${var.storage_account_name}${random_string.suffix.result}"
  resource_group_name      = azurerm_resource_group.custom-managed-images.name
  location                 = azurerm_resource_group.custom-managed-images.location
  account_tier             = "Standard"
  account_replication_type = "RAGRS"
}

resource "azurerm_storage_container" "custom-managed-images" {
  name                  = "${var.prefix}${var.storage_container_name}"
  storage_account_name  = azurerm_storage_account.custom-managed-images.name
  container_access_type = "private"
}