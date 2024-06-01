##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#
output "org_id" {
  value = aws_organizations_account.org.id
}

output "org_arn" {
  value = aws_organizations_account.org.arn
}

output "org_name" {
  value = aws_organizations_account.org.name
}
output "org_assume_role_id" {
  value = "arn:aws:iam::${aws_organizations_account.org.id}:role/${var.organization_role}"
}

output "org_console_url" {
  value = "https://${aws_organizations_account.org.id}.signin.aws.amazon.com/console"
}

output "org_tags" {
  value = {
    organization_name = var.organization_name
    organization_unit = var.fintech_name
    environment_name  = var.environment_name
    environment_type  = var.environment_type
  }
}
