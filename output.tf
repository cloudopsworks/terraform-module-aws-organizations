##
# (c) 2021-2026
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#

output "account_id" {
  description = "The AWS account ID of the provisioned Organizations account."
  value       = aws_organizations_account.org.id
}

output "account_arn" {
  description = "The ARN of the provisioned AWS Organizations account."
  value       = aws_organizations_account.org.arn
}

output "account_name" {
  description = "The display name of the provisioned AWS Organizations account."
  value       = aws_organizations_account.org.name
}

output "account_assume_role_id" {
  description = "Full ARN of the default cross-account assume-role for the provisioned account."
  value       = "arn:aws:iam::${aws_organizations_account.org.id}:role/${var.organization_role}"
}

output "account_console_url" {
  description = "AWS Console sign-in URL scoped to the provisioned account."
  value       = "https://${aws_organizations_account.org.id}.signin.aws.amazon.com/console"
}

output "account_tags" {
  description = "Map of organization-level metadata tags applied to the provisioned account."
  value = {
    organization_name = var.org.organization_name
    organization_unit = var.org.organization_unit
    environment_name  = var.org.environment_name
    environment_type  = var.org.environment_type
  }
}
