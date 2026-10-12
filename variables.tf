variable "table_storage_lifecycle_policy_attachments" {
  description = <<EOT
Map of table_storage_lifecycle_policy_attachments, attributes below
Required:
    - on
    - storage_lifecycle_policy_name
    - table_name
    - table_type
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    on                            = list(string)
    storage_lifecycle_policy_name = string
    table_name                    = string
    table_type                    = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

