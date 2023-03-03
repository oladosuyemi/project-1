output "azure_resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "azure_storage_account_name" {
  value = azurerm_storage_account.storage_account.name
}
