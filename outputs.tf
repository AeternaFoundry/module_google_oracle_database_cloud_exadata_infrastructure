output "oracle_database_cloud_exadata_infrastructures_id" {
  description = "Map of id values across all oracle_database_cloud_exadata_infrastructures, keyed the same as var.oracle_database_cloud_exadata_infrastructures except keys with no id are omitted"
  value       = { for k, v in google_oracle_database_cloud_exadata_infrastructure.oracle_database_cloud_exadata_infrastructures : k => v.id if v.id != null && length(v.id) > 0 }
}
output "oracle_database_cloud_exadata_infrastructures_cloud_exadata_infrastructure_id" {
  description = "Map of cloud_exadata_infrastructure_id values across all oracle_database_cloud_exadata_infrastructures, keyed the same as var.oracle_database_cloud_exadata_infrastructures except keys with no cloud_exadata_infrastructure_id are omitted"
  value       = { for k, v in google_oracle_database_cloud_exadata_infrastructure.oracle_database_cloud_exadata_infrastructures : k => v.cloud_exadata_infrastructure_id if v.cloud_exadata_infrastructure_id != null && length(v.cloud_exadata_infrastructure_id) > 0 }
}
output "oracle_database_cloud_exadata_infrastructures_create_time" {
  description = "Map of create_time values across all oracle_database_cloud_exadata_infrastructures, keyed the same as var.oracle_database_cloud_exadata_infrastructures except keys with no create_time are omitted"
  value       = { for k, v in google_oracle_database_cloud_exadata_infrastructure.oracle_database_cloud_exadata_infrastructures : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "oracle_database_cloud_exadata_infrastructures_deletion_policy" {
  description = "Map of deletion_policy values across all oracle_database_cloud_exadata_infrastructures, keyed the same as var.oracle_database_cloud_exadata_infrastructures except keys with no deletion_policy are omitted"
  value       = { for k, v in google_oracle_database_cloud_exadata_infrastructure.oracle_database_cloud_exadata_infrastructures : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "oracle_database_cloud_exadata_infrastructures_deletion_protection" {
  description = "Map of deletion_protection values across all oracle_database_cloud_exadata_infrastructures, keyed the same as var.oracle_database_cloud_exadata_infrastructures except keys with no deletion_protection are omitted"
  value       = { for k, v in google_oracle_database_cloud_exadata_infrastructure.oracle_database_cloud_exadata_infrastructures : k => v.deletion_protection if v.deletion_protection != null }
}
output "oracle_database_cloud_exadata_infrastructures_display_name" {
  description = "Map of display_name values across all oracle_database_cloud_exadata_infrastructures, keyed the same as var.oracle_database_cloud_exadata_infrastructures except keys with no display_name are omitted"
  value       = { for k, v in google_oracle_database_cloud_exadata_infrastructure.oracle_database_cloud_exadata_infrastructures : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "oracle_database_cloud_exadata_infrastructures_effective_labels" {
  description = "Map of effective_labels values across all oracle_database_cloud_exadata_infrastructures, keyed the same as var.oracle_database_cloud_exadata_infrastructures except keys with no effective_labels are omitted"
  value       = { for k, v in google_oracle_database_cloud_exadata_infrastructure.oracle_database_cloud_exadata_infrastructures : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "oracle_database_cloud_exadata_infrastructures_entitlement_id" {
  description = "Map of entitlement_id values across all oracle_database_cloud_exadata_infrastructures, keyed the same as var.oracle_database_cloud_exadata_infrastructures except keys with no entitlement_id are omitted"
  value       = { for k, v in google_oracle_database_cloud_exadata_infrastructure.oracle_database_cloud_exadata_infrastructures : k => v.entitlement_id if v.entitlement_id != null && length(v.entitlement_id) > 0 }
}
output "oracle_database_cloud_exadata_infrastructures_gcp_oracle_zone" {
  description = "Map of gcp_oracle_zone values across all oracle_database_cloud_exadata_infrastructures, keyed the same as var.oracle_database_cloud_exadata_infrastructures except keys with no gcp_oracle_zone are omitted"
  value       = { for k, v in google_oracle_database_cloud_exadata_infrastructure.oracle_database_cloud_exadata_infrastructures : k => v.gcp_oracle_zone if v.gcp_oracle_zone != null && length(v.gcp_oracle_zone) > 0 }
}
output "oracle_database_cloud_exadata_infrastructures_labels" {
  description = "Map of labels values across all oracle_database_cloud_exadata_infrastructures, keyed the same as var.oracle_database_cloud_exadata_infrastructures except keys with no labels are omitted"
  value       = { for k, v in google_oracle_database_cloud_exadata_infrastructure.oracle_database_cloud_exadata_infrastructures : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "oracle_database_cloud_exadata_infrastructures_location" {
  description = "Map of location values across all oracle_database_cloud_exadata_infrastructures, keyed the same as var.oracle_database_cloud_exadata_infrastructures except keys with no location are omitted"
  value       = { for k, v in google_oracle_database_cloud_exadata_infrastructure.oracle_database_cloud_exadata_infrastructures : k => v.location if v.location != null && length(v.location) > 0 }
}
output "oracle_database_cloud_exadata_infrastructures_name" {
  description = "Map of name values across all oracle_database_cloud_exadata_infrastructures, keyed the same as var.oracle_database_cloud_exadata_infrastructures except keys with no name are omitted"
  value       = { for k, v in google_oracle_database_cloud_exadata_infrastructure.oracle_database_cloud_exadata_infrastructures : k => v.name if v.name != null && length(v.name) > 0 }
}
output "oracle_database_cloud_exadata_infrastructures_project" {
  description = "Map of project values across all oracle_database_cloud_exadata_infrastructures, keyed the same as var.oracle_database_cloud_exadata_infrastructures except keys with no project are omitted"
  value       = { for k, v in google_oracle_database_cloud_exadata_infrastructure.oracle_database_cloud_exadata_infrastructures : k => v.project if v.project != null && length(v.project) > 0 }
}
output "oracle_database_cloud_exadata_infrastructures_properties" {
  description = "Map of properties values across all oracle_database_cloud_exadata_infrastructures, keyed the same as var.oracle_database_cloud_exadata_infrastructures except keys with no properties are omitted"
  value       = { for k, v in google_oracle_database_cloud_exadata_infrastructure.oracle_database_cloud_exadata_infrastructures : k => one(v.properties) if v.properties != null && length(v.properties) > 0 }
}
output "oracle_database_cloud_exadata_infrastructures_terraform_labels" {
  description = "Map of terraform_labels values across all oracle_database_cloud_exadata_infrastructures, keyed the same as var.oracle_database_cloud_exadata_infrastructures except keys with no terraform_labels are omitted"
  value       = { for k, v in google_oracle_database_cloud_exadata_infrastructure.oracle_database_cloud_exadata_infrastructures : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

