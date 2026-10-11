variable "postgres_projects" {
  description = <<EOT
Map of postgres_projects, attributes below
Required:
    - project_id
Optional:
    - initial_branch_spec
    - initial_endpoint_spec
    - provider_config
    - purge_on_delete
    - spec
EOT

  type = map(object({
    project_id = string
    initial_branch_spec = optional(object({
      is_protected = optional(bool)
    }))
    initial_endpoint_spec = optional(object({
      autoscaling_limit_max_cu = optional(number)
      autoscaling_limit_min_cu = optional(number)
      group = optional(object({
        enable_readable_secondaries = optional(bool)
        max                         = number
        min                         = number
      }))
      no_suspension            = optional(bool)
      suspend_timeout_duration = optional(string)
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    purge_on_delete = optional(bool)
    spec = optional(object({
      budget_policy_id = optional(string)
      custom_tags = optional(list(object({
        key   = optional(string)
        value = optional(string)
      })))
      default_branch = optional(string)
      default_endpoint_settings = optional(object({
        autoscaling_limit_max_cu = optional(number)
        autoscaling_limit_min_cu = optional(number)
        no_suspension            = optional(bool)
        pg_settings              = optional(map(string))
        suspend_timeout_duration = optional(string)
      }))
      display_name               = optional(string)
      enable_pg_native_login     = optional(bool)
      history_retention_duration = optional(string)
      pg_version                 = optional(number)
    }))
  }))
}

