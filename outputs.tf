output "data_shares_id" {
  description = "Map of id values across all data_shares, keyed the same as var.data_shares"
  value       = { for k, v in azurerm_data_share.data_shares : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_shares_account_id" {
  description = "Map of account_id values across all data_shares, keyed the same as var.data_shares"
  value       = { for k, v in azurerm_data_share.data_shares : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "data_shares_description" {
  description = "Map of description values across all data_shares, keyed the same as var.data_shares"
  value       = { for k, v in azurerm_data_share.data_shares : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_shares_kind" {
  description = "Map of kind values across all data_shares, keyed the same as var.data_shares"
  value       = { for k, v in azurerm_data_share.data_shares : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "data_shares_name" {
  description = "Map of name values across all data_shares, keyed the same as var.data_shares"
  value       = { for k, v in azurerm_data_share.data_shares : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_shares_snapshot_schedule" {
  description = "Map of snapshot_schedule values across all data_shares, keyed the same as var.data_shares"
  value       = { for k, v in azurerm_data_share.data_shares : k => one(v.snapshot_schedule) if v.snapshot_schedule != null && length(v.snapshot_schedule) > 0 }
}
output "data_shares_terms" {
  description = "Map of terms values across all data_shares, keyed the same as var.data_shares"
  value       = { for k, v in azurerm_data_share.data_shares : k => v.terms if v.terms != null && length(v.terms) > 0 }
}

