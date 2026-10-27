output "federated_logs_partitions_id" {
  description = "Map of id values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.id }
}
output "federated_logs_partitions_account_id" {
  description = "Map of account_id values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.account_id }
}
output "federated_logs_partitions_active" {
  description = "Map of active values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.active }
}
output "federated_logs_partitions_created_at" {
  description = "Map of created_at values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.created_at }
}
output "federated_logs_partitions_data_retention_policy" {
  description = "Map of data_retention_policy values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => one(v.data_retention_policy) }
}
output "federated_logs_partitions_description" {
  description = "Map of description values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.description }
}
output "federated_logs_partitions_forwarder_configuration" {
  description = "Map of forwarder_configuration values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => one(v.forwarder_configuration) }
}
output "federated_logs_partitions_health_check" {
  description = "Map of health_check values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.health_check }
}
output "federated_logs_partitions_is_default" {
  description = "Map of is_default values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.is_default }
}
output "federated_logs_partitions_lifecycle_status" {
  description = "Map of lifecycle_status values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.lifecycle_status }
}
output "federated_logs_partitions_name" {
  description = "Map of name values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.name }
}
output "federated_logs_partitions_setup_id" {
  description = "Map of setup_id values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.setup_id }
}
output "federated_logs_partitions_storage" {
  description = "Map of storage values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => one(v.storage) }
}
output "federated_logs_partitions_updated_at" {
  description = "Map of updated_at values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.updated_at }
}

