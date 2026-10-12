output "table_storage_lifecycle_policy_attachments_id" {
  description = "Map of id values across all table_storage_lifecycle_policy_attachments, keyed the same as var.table_storage_lifecycle_policy_attachments except keys with no id are omitted"
  value       = { for k, v in snowflake_table_storage_lifecycle_policy_attachment.table_storage_lifecycle_policy_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "table_storage_lifecycle_policy_attachments_on" {
  description = "Map of on values across all table_storage_lifecycle_policy_attachments, keyed the same as var.table_storage_lifecycle_policy_attachments except keys with no on are omitted"
  value       = { for k, v in snowflake_table_storage_lifecycle_policy_attachment.table_storage_lifecycle_policy_attachments : k => v.on if v.on != null && length(v.on) > 0 }
}
output "table_storage_lifecycle_policy_attachments_storage_lifecycle_policy_name" {
  description = "Map of storage_lifecycle_policy_name values across all table_storage_lifecycle_policy_attachments, keyed the same as var.table_storage_lifecycle_policy_attachments except keys with no storage_lifecycle_policy_name are omitted"
  value       = { for k, v in snowflake_table_storage_lifecycle_policy_attachment.table_storage_lifecycle_policy_attachments : k => v.storage_lifecycle_policy_name if v.storage_lifecycle_policy_name != null && length(v.storage_lifecycle_policy_name) > 0 }
}
output "table_storage_lifecycle_policy_attachments_table_name" {
  description = "Map of table_name values across all table_storage_lifecycle_policy_attachments, keyed the same as var.table_storage_lifecycle_policy_attachments except keys with no table_name are omitted"
  value       = { for k, v in snowflake_table_storage_lifecycle_policy_attachment.table_storage_lifecycle_policy_attachments : k => v.table_name if v.table_name != null && length(v.table_name) > 0 }
}
output "table_storage_lifecycle_policy_attachments_table_type" {
  description = "Map of table_type values across all table_storage_lifecycle_policy_attachments, keyed the same as var.table_storage_lifecycle_policy_attachments except keys with no table_type are omitted"
  value       = { for k, v in snowflake_table_storage_lifecycle_policy_attachment.table_storage_lifecycle_policy_attachments : k => v.table_type if v.table_type != null && length(v.table_type) > 0 }
}

