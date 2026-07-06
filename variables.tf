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
        length(v.content) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.logic_app_integration_account_maps : (
        v.metadata == null || (length(v.metadata) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_logic_app_integration_account_map's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.IntegrationAccountMapName] !ok
  # path: name
  #   condition: length(value) <= 80
  #   message:   [from validate.IntegrationAccountMapName: invalid when len(value) > 80]
  #   source:    [from validate.IntegrationAccountMapName: invalid when len(value) > 80]
  # path: name
  #   source:    [from validate.IntegrationAccountMapName] !regexp.MustCompile(`^[A-Za-z0-9-().]+$`).MatchString(v)
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: integration_account_name
  #   source:    validate.IntegrationAccountName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: map_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

