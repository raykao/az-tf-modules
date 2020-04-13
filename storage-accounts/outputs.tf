output "resource_group_name" {
  value = azurerm_resource_group.custom-managed-images.name
}

output "storage_account_name" {
  value = azurerm_storage_account.custom-managed-images.name
}

output "storage_container_name" {
  value = azurerm_storage_container.custom-managed-images.name
}