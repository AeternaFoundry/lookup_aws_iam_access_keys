data "aws_iam_access_keys" "iam_access_keys_lookup" {
  for_each = var.iam_access_keys_lookup

  user = each.value.user
}

