variable "federated_logs_partitions" {
  description = <<EOT
Map of federated_logs_partitions, attributes below
Required:
    - name
    - setup_id
    - storage (block):
        - data_location_uri (required)
        - table (required)
Optional:
    - account_id
    - active
    - description
    - data_retention_policy (block):
        - duration (required)
        - unit (required)
    - forwarder_configuration (block):
        - pipeline_control (optional, block):
            - partition_rule (optional, block):
                - expression (required)
        - type (required)
EOT

  type = map(object({
    name        = string
    setup_id    = string
    account_id  = optional(number)
    active      = optional(bool)
    description = optional(string)
    storage = object({
      data_location_uri = string
      table             = string
    })
    data_retention_policy = optional(object({
      duration = number
      unit     = string
    }))
    forwarder_configuration = optional(object({
      pipeline_control = optional(object({
        partition_rule = optional(object({
          expression = string
        }))
      }))
      type = string
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

