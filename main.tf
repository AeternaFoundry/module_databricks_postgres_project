resource "databricks_postgres_project" "postgres_projects" {
  for_each = var.postgres_projects

  project_id            = each.value.project_id
  initial_branch_spec   = each.value.initial_branch_spec
  initial_endpoint_spec = each.value.initial_endpoint_spec
  provider_config       = each.value.provider_config
  purge_on_delete       = each.value.purge_on_delete
  spec                  = each.value.spec
}

