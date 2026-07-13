variable "logic_app_integration_account_maps" {
  description = <<EOT
Map of logic_app_integration_account_maps, attributes below
Required:
    - content
    - integration_account_name
    - map_type
    - name
    - resource_group_name
Optional:
    - metadata
EOT

  type = map(object({
    content                  = string
    integration_account_name = string
    map_type                 = string
    name                     = string
    resource_group_name      = string
    metadata                 = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_maps : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_maps : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_maps : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_maps : (
        length(v.content) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_maps : (
        v.metadata == null || (alltrue([for x in v.metadata : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

