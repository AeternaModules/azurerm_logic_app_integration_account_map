output "logic_app_integration_account_maps" {
  description = "All logic_app_integration_account_map resources"
  value       = azurerm_logic_app_integration_account_map.logic_app_integration_account_maps
}
output "logic_app_integration_account_maps_content" {
  description = "List of content values across all logic_app_integration_account_maps"
  value       = [for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : v.content]
}
output "logic_app_integration_account_maps_integration_account_name" {
  description = "List of integration_account_name values across all logic_app_integration_account_maps"
  value       = [for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : v.integration_account_name]
}
output "logic_app_integration_account_maps_map_type" {
  description = "List of map_type values across all logic_app_integration_account_maps"
  value       = [for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : v.map_type]
}
output "logic_app_integration_account_maps_metadata" {
  description = "List of metadata values across all logic_app_integration_account_maps"
  value       = [for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : v.metadata]
}
output "logic_app_integration_account_maps_name" {
  description = "List of name values across all logic_app_integration_account_maps"
  value       = [for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : v.name]
}
output "logic_app_integration_account_maps_resource_group_name" {
  description = "List of resource_group_name values across all logic_app_integration_account_maps"
  value       = [for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : v.resource_group_name]
}

