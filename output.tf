##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

# Organization Account ID
output "account_id" {
  value = aws_organizations_account.org.id
}

# Organization Account ARN
output "account_arn" {
  value = aws_organizations_account.org.arn
}

# Organization Account Name
output "account_name" {
  value = aws_organizations_account.org.name
}

# Account Assume Role
output "account_assume_role_id" {
  value = "arn:aws:iam::${aws_organizations_account.org.id}:role/${var.organization_role}"
}

# Account Console URL
output "account_console_url" {
  value = "https://${aws_organizations_account.org.id}.signin.aws.amazon.com/console"
}

# Account Tags
output "account_tags" {
  value = {
    organization_name = var.organization_name
    organization_unit = var.organization_unit
    environment_name  = var.environment_name
    environment_type  = var.environment_type
  }
}
