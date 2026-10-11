data "oci_log_analytics_log_analytics_log_groups" "log_analytics_log_analytics_log_groups_lookup" {
  for_each = var.log_analytics_log_analytics_log_groups_lookup

  compartment_id = each.value.compartment_id
  namespace      = each.value.namespace
  display_name   = each.value.display_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

