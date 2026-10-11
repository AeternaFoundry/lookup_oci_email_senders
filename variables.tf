variable "email_senders_lookup" {
  description = <<EOT
Map of email_senders_lookup, attributes below
Required:
    - compartment_id
Optional:
    - domain
    - email_address
    - email_ip_pool_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id   = string
    domain           = optional(string)
    email_address    = optional(string)
    email_ip_pool_id = optional(string)
    state            = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

