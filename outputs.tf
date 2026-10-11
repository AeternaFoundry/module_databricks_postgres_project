output "postgres_projects_create_time" {
  description = "Map of create_time values across all postgres_projects, keyed the same as var.postgres_projects except keys with no create_time are omitted"
  value       = { for k, v in databricks_postgres_project.postgres_projects : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "postgres_projects_delete_time" {
  description = "Map of delete_time values across all postgres_projects, keyed the same as var.postgres_projects except keys with no delete_time are omitted"
  value       = { for k, v in databricks_postgres_project.postgres_projects : k => v.delete_time if v.delete_time != null && length(v.delete_time) > 0 }
}
output "postgres_projects_initial_branch_spec" {
  description = "Map of initial_branch_spec values across all postgres_projects, keyed the same as var.postgres_projects except keys with no initial_branch_spec are omitted"
  value       = { for k, v in databricks_postgres_project.postgres_projects : k => v.initial_branch_spec if v.initial_branch_spec != null && length(v.initial_branch_spec) > 0 }
}
output "postgres_projects_initial_endpoint_spec" {
  description = "Map of initial_endpoint_spec values across all postgres_projects, keyed the same as var.postgres_projects except keys with no initial_endpoint_spec are omitted"
  value       = { for k, v in databricks_postgres_project.postgres_projects : k => v.initial_endpoint_spec if v.initial_endpoint_spec != null && length(v.initial_endpoint_spec) > 0 }
}
output "postgres_projects_name" {
  description = "Map of name values across all postgres_projects, keyed the same as var.postgres_projects except keys with no name are omitted"
  value       = { for k, v in databricks_postgres_project.postgres_projects : k => v.name if v.name != null && length(v.name) > 0 }
}
output "postgres_projects_project_id" {
  description = "Map of project_id values across all postgres_projects, keyed the same as var.postgres_projects except keys with no project_id are omitted"
  value       = { for k, v in databricks_postgres_project.postgres_projects : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "postgres_projects_provider_config" {
  description = "Map of provider_config values across all postgres_projects, keyed the same as var.postgres_projects except keys with no provider_config are omitted"
  value       = { for k, v in databricks_postgres_project.postgres_projects : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "postgres_projects_purge_on_delete" {
  description = "Map of purge_on_delete values across all postgres_projects, keyed the same as var.postgres_projects except keys with no purge_on_delete are omitted"
  value       = { for k, v in databricks_postgres_project.postgres_projects : k => v.purge_on_delete if v.purge_on_delete != null }
}
output "postgres_projects_purge_time" {
  description = "Map of purge_time values across all postgres_projects, keyed the same as var.postgres_projects except keys with no purge_time are omitted"
  value       = { for k, v in databricks_postgres_project.postgres_projects : k => v.purge_time if v.purge_time != null && length(v.purge_time) > 0 }
}
output "postgres_projects_spec" {
  description = "Map of spec values across all postgres_projects, keyed the same as var.postgres_projects except keys with no spec are omitted"
  value       = { for k, v in databricks_postgres_project.postgres_projects : k => v.spec if v.spec != null && length(v.spec) > 0 }
}
output "postgres_projects_status" {
  description = "Map of status values across all postgres_projects, keyed the same as var.postgres_projects except keys with no status are omitted"
  value       = { for k, v in databricks_postgres_project.postgres_projects : k => v.status if v.status != null && length(v.status) > 0 }
}
output "postgres_projects_uid" {
  description = "Map of uid values across all postgres_projects, keyed the same as var.postgres_projects except keys with no uid are omitted"
  value       = { for k, v in databricks_postgres_project.postgres_projects : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "postgres_projects_update_time" {
  description = "Map of update_time values across all postgres_projects, keyed the same as var.postgres_projects except keys with no update_time are omitted"
  value       = { for k, v in databricks_postgres_project.postgres_projects : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

