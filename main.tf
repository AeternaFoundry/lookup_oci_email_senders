data "oci_email_senders" "email_senders_lookup" {
  for_each = var.email_senders_lookup

  compartment_id   = each.value.compartment_id
  domain           = each.value.domain
  email_address    = each.value.email_address
  email_ip_pool_id = each.value.email_ip_pool_id
  state            = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

