variable "data_shares" {
  description = <<EOT
Map of data_shares, attributes below
Required:
    - account_id
    - kind
    - name
Optional:
    - description
    - terms
    - snapshot_schedule (block):
        - name (required)
        - recurrence (required)
        - start_time (required)
EOT

  type = map(object({
    account_id  = string
    kind        = string
    name        = string
    description = optional(string)
    terms       = optional(string)
    snapshot_schedule = optional(object({
      name       = string
      recurrence = string
      start_time = string
    }))
  }))
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

