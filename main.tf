resource "newrelic_federated_logs_partition" "federated_logs_partitions" {
  for_each = var.federated_logs_partitions

  name        = each.value.name
  setup_id    = each.value.setup_id
  account_id  = each.value.account_id
  active      = each.value.active
  description = each.value.description

  storage {
    data_location_uri = each.value.storage.data_location_uri
    table             = each.value.storage.table
  }

  dynamic "data_retention_policy" {
    for_each = each.value.data_retention_policy != null ? [each.value.data_retention_policy] : []
    content {
      duration = data_retention_policy.value.duration
      unit     = data_retention_policy.value.unit
    }
  }

  dynamic "forwarder_configuration" {
    for_each = each.value.forwarder_configuration != null ? [each.value.forwarder_configuration] : []
    content {
      dynamic "pipeline_control" {
        for_each = forwarder_configuration.value.pipeline_control != null ? [forwarder_configuration.value.pipeline_control] : []
        content {
          dynamic "partition_rule" {
            for_each = pipeline_control.value.partition_rule != null ? [pipeline_control.value.partition_rule] : []
            content {
              expression = partition_rule.value.expression
            }
          }
        }
      }
      type = forwarder_configuration.value.type
    }
  }
}

