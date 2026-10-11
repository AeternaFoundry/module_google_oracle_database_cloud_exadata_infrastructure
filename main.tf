resource "google_oracle_database_cloud_exadata_infrastructure" "oracle_database_cloud_exadata_infrastructures" {
  for_each = var.oracle_database_cloud_exadata_infrastructures

  cloud_exadata_infrastructure_id = each.value.cloud_exadata_infrastructure_id
  location                        = each.value.location
  deletion_policy                 = each.value.deletion_policy
  deletion_protection             = each.value.deletion_protection
  display_name                    = each.value.display_name
  gcp_oracle_zone                 = each.value.gcp_oracle_zone
  labels                          = each.value.labels
  project                         = each.value.project

  dynamic "properties" {
    for_each = each.value.properties != null ? [each.value.properties] : []
    content {
      compute_count = properties.value.compute_count
      dynamic "customer_contacts" {
        for_each = properties.value.customer_contacts != null ? properties.value.customer_contacts : []
        content {
          email = customer_contacts.value.email
        }
      }
      dynamic "maintenance_window" {
        for_each = properties.value.maintenance_window != null ? [properties.value.maintenance_window] : []
        content {
          custom_action_timeout_mins       = maintenance_window.value.custom_action_timeout_mins
          days_of_week                     = maintenance_window.value.days_of_week
          hours_of_day                     = maintenance_window.value.hours_of_day
          is_custom_action_timeout_enabled = maintenance_window.value.is_custom_action_timeout_enabled
          lead_time_week                   = maintenance_window.value.lead_time_week
          months                           = maintenance_window.value.months
          patching_mode                    = maintenance_window.value.patching_mode
          preference                       = maintenance_window.value.preference
          weeks_of_month                   = maintenance_window.value.weeks_of_month
        }
      }
      shape                 = properties.value.shape
      storage_count         = properties.value.storage_count
      total_storage_size_gb = properties.value.total_storage_size_gb
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

