output "logic_app_integration_account_maps_id" {
  description = "Map of id values across all logic_app_integration_account_maps, keyed the same as var.logic_app_integration_account_maps"
  value       = { for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logic_app_integration_account_maps_content" {
  description = "Map of content values across all logic_app_integration_account_maps, keyed the same as var.logic_app_integration_account_maps"
  value       = { for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : k => v.content if v.content != null && length(v.content) > 0 }
}
output "logic_app_integration_account_maps_integration_account_name" {
  description = "Map of integration_account_name values across all logic_app_integration_account_maps, keyed the same as var.logic_app_integration_account_maps"
  value       = { for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : k => v.integration_account_name if v.integration_account_name != null && length(v.integration_account_name) > 0 }
}
output "logic_app_integration_account_maps_map_type" {
  description = "Map of map_type values across all logic_app_integration_account_maps, keyed the same as var.logic_app_integration_account_maps"
  value       = { for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : k => v.map_type if v.map_type != null && length(v.map_type) > 0 }
}
output "logic_app_integration_account_maps_metadata" {
  description = "Map of metadata values across all logic_app_integration_account_maps, keyed the same as var.logic_app_integration_account_maps"
  value       = { for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "logic_app_integration_account_maps_name" {
  description = "Map of name values across all logic_app_integration_account_maps, keyed the same as var.logic_app_integration_account_maps"
  value       = { for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : k => v.name if v.name != null && length(v.name) > 0 }
}
output "logic_app_integration_account_maps_resource_group_name" {
  description = "Map of resource_group_name values across all logic_app_integration_account_maps, keyed the same as var.logic_app_integration_account_maps"
  value       = { for k, v in azurerm_logic_app_integration_account_map.logic_app_integration_account_maps : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}

