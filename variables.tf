variable "log_analytics_log_analytics_log_groups_lookup" {
  description = <<EOT
Map of log_analytics_log_analytics_log_groups_lookup, attributes below
Required:
    - compartment_id
    - namespace
Optional:
    - display_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    namespace      = string
    display_name   = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

