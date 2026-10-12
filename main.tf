resource "snowflake_table_storage_lifecycle_policy_attachment" "table_storage_lifecycle_policy_attachments" {
  for_each = var.table_storage_lifecycle_policy_attachments

  on                            = each.value.on
  storage_lifecycle_policy_name = each.value.storage_lifecycle_policy_name
  table_name                    = each.value.table_name
  table_type                    = each.value.table_type

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

