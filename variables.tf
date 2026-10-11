variable "iam_access_keys_lookup" {
  description = <<EOT
Map of iam_access_keys_lookup, attributes below
Required:
    - user
EOT

  type = map(object({
    user = string
  }))
}

