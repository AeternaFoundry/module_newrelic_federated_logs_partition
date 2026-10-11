output "federated_logs_partitions_id" {
  description = "Map of id values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions except keys with no id are omitted"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "federated_logs_partitions_account_id" {
  description = "Map of account_id values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions except keys with no account_id are omitted"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.account_id if v.account_id != null }
}
output "federated_logs_partitions_active" {
  description = "Map of active values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions except keys with no active are omitted"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.active if v.active != null }
}
output "federated_logs_partitions_created_at" {
  description = "Map of created_at values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions except keys with no created_at are omitted"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "federated_logs_partitions_data_retention_policy" {
  description = "Map of data_retention_policy values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions except keys with no data_retention_policy are omitted"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => one(v.data_retention_policy) if v.data_retention_policy != null && length(v.data_retention_policy) > 0 }
}
output "federated_logs_partitions_description" {
  description = "Map of description values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions except keys with no description are omitted"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "federated_logs_partitions_forwarder_configuration" {
  description = "Map of forwarder_configuration values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions except keys with no forwarder_configuration are omitted"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => one(v.forwarder_configuration) if v.forwarder_configuration != null && length(v.forwarder_configuration) > 0 }
}
output "federated_logs_partitions_health_check" {
  description = "Map of health_check values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions except keys with no health_check are omitted"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.health_check if v.health_check != null && length(v.health_check) > 0 }
}
output "federated_logs_partitions_is_default" {
  description = "Map of is_default values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions except keys with no is_default are omitted"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.is_default if v.is_default != null }
}
output "federated_logs_partitions_lifecycle_status" {
  description = "Map of lifecycle_status values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions except keys with no lifecycle_status are omitted"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.lifecycle_status if v.lifecycle_status != null && length(v.lifecycle_status) > 0 }
}
output "federated_logs_partitions_name" {
  description = "Map of name values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions except keys with no name are omitted"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "federated_logs_partitions_setup_id" {
  description = "Map of setup_id values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions except keys with no setup_id are omitted"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.setup_id if v.setup_id != null && length(v.setup_id) > 0 }
}
output "federated_logs_partitions_storage" {
  description = "Map of storage values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions except keys with no storage are omitted"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => one(v.storage) if v.storage != null && length(v.storage) > 0 }
}
output "federated_logs_partitions_updated_at" {
  description = "Map of updated_at values across all federated_logs_partitions, keyed the same as var.federated_logs_partitions except keys with no updated_at are omitted"
  value       = { for k, v in newrelic_federated_logs_partition.federated_logs_partitions : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}

