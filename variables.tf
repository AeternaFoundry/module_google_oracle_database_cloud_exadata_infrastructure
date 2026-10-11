variable "oracle_database_cloud_exadata_infrastructures" {
  description = <<EOT
Map of oracle_database_cloud_exadata_infrastructures, attributes below
Required:
    - cloud_exadata_infrastructure_id
    - location
Optional:
    - deletion_policy
    - deletion_protection
    - display_name
    - gcp_oracle_zone
    - labels
    - project
    - properties (block):
        - compute_count (optional)
        - customer_contacts (optional, block):
            - email (required)
        - maintenance_window (optional, block):
            - custom_action_timeout_mins (optional)
            - days_of_week (optional)
            - hours_of_day (optional)
            - is_custom_action_timeout_enabled (optional)
            - lead_time_week (optional)
            - months (optional)
            - patching_mode (optional)
            - preference (optional)
            - weeks_of_month (optional)
        - shape (required)
        - storage_count (optional)
        - total_storage_size_gb (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    cloud_exadata_infrastructure_id = string
    location                        = string
    deletion_policy                 = optional(string)
    deletion_protection             = optional(bool)
    display_name                    = optional(string)
    gcp_oracle_zone                 = optional(string)
    labels                          = optional(map(string))
    project                         = optional(string)
    properties = optional(object({
      compute_count = optional(number)
      customer_contacts = optional(list(object({
        email = string
      })))
      maintenance_window = optional(object({
        custom_action_timeout_mins       = optional(number)
        days_of_week                     = optional(list(string))
        hours_of_day                     = optional(list(number))
        is_custom_action_timeout_enabled = optional(bool)
        lead_time_week                   = optional(number)
        months                           = optional(list(string))
        patching_mode                    = optional(string)
        preference                       = optional(string)
        weeks_of_month                   = optional(list(number))
      }))
      shape                 = string
      storage_count         = optional(number)
      total_storage_size_gb = optional(number)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

