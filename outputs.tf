output "logic_app_integration_account_maps_content" {
  description = "Map of content values across all logic_app_integration_account_maps, keyed the same as var.logic_app_integration_account_maps"
  value       = { for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : k => v.content }
}
output "logic_app_integration_account_maps_integration_account_name" {
  description = "Map of integration_account_name values across all logic_app_integration_account_maps, keyed the same as var.logic_app_integration_account_maps"
  value       = { for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : k => v.integration_account_name }
}
output "logic_app_integration_account_maps_map_type" {
  description = "Map of map_type values across all logic_app_integration_account_maps, keyed the same as var.logic_app_integration_account_maps"
  value       = { for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : k => v.map_type }
}
output "logic_app_integration_account_maps_metadata" {
  description = "Map of metadata values across all logic_app_integration_account_maps, keyed the same as var.logic_app_integration_account_maps"
  value       = { for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : k => v.metadata }
}
output "logic_app_integration_account_maps_name" {
  description = "Map of name values across all logic_app_integration_account_maps, keyed the same as var.logic_app_integration_account_maps"
  value       = { for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : k => v.name }
}
output "logic_app_integration_account_maps_resource_group_name" {
  description = "Map of resource_group_name values across all logic_app_integration_account_maps, keyed the same as var.logic_app_integration_account_maps"
  value       = { for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : k => v.resource_group_name }
}

