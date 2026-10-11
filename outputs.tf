output "iam_access_keys_lookup_id" {
  description = "Map of id values across all iam_access_keys_lookup, keyed the same as var.iam_access_keys_lookup"
  value       = { for k, v in data.aws_iam_access_keys.iam_access_keys_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_access_keys_lookup_access_keys" {
  description = "Map of access_keys values across all iam_access_keys_lookup, keyed the same as var.iam_access_keys_lookup"
  value       = { for k, v in data.aws_iam_access_keys.iam_access_keys_lookup : k => v.access_keys if v.access_keys != null && length(v.access_keys) > 0 }
}
output "iam_access_keys_lookup_user" {
  description = "Map of user values across all iam_access_keys_lookup, keyed the same as var.iam_access_keys_lookup"
  value       = { for k, v in data.aws_iam_access_keys.iam_access_keys_lookup : k => v.user if v.user != null && length(v.user) > 0 }
}

