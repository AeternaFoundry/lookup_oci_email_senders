output "email_senders_lookup_id" {
  description = "Map of id values across all email_senders_lookup, keyed the same as var.email_senders_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_email_senders.email_senders_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "email_senders_lookup_compartment_id" {
  description = "Map of compartment_id values across all email_senders_lookup, keyed the same as var.email_senders_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_email_senders.email_senders_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "email_senders_lookup_domain" {
  description = "Map of domain values across all email_senders_lookup, keyed the same as var.email_senders_lookup except keys with no domain are omitted"
  value       = { for k, v in data.oci_email_senders.email_senders_lookup : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "email_senders_lookup_email_address" {
  description = "Map of email_address values across all email_senders_lookup, keyed the same as var.email_senders_lookup except keys with no email_address are omitted"
  value       = { for k, v in data.oci_email_senders.email_senders_lookup : k => v.email_address if v.email_address != null && length(v.email_address) > 0 }
}
output "email_senders_lookup_email_ip_pool_id" {
  description = "Map of email_ip_pool_id values across all email_senders_lookup, keyed the same as var.email_senders_lookup except keys with no email_ip_pool_id are omitted"
  value       = { for k, v in data.oci_email_senders.email_senders_lookup : k => v.email_ip_pool_id if v.email_ip_pool_id != null && length(v.email_ip_pool_id) > 0 }
}
output "email_senders_lookup_filter" {
  description = "Map of filter values across all email_senders_lookup, keyed the same as var.email_senders_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_email_senders.email_senders_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "email_senders_lookup_senders" {
  description = "Map of senders values across all email_senders_lookup, keyed the same as var.email_senders_lookup except keys with no senders are omitted"
  value       = { for k, v in data.oci_email_senders.email_senders_lookup : k => v.senders if v.senders != null && length(v.senders) > 0 }
}
output "email_senders_lookup_state" {
  description = "Map of state values across all email_senders_lookup, keyed the same as var.email_senders_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_email_senders.email_senders_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

