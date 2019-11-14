output "org_id" {
  value = aws_organizations_account.org.id
}

output "org_arn" {
  value = aws_organizations_account.org.arn
}

output "org_assume_role_id" {
  value = "arn:aws:iam::${aws_organizations_account.org.id}:role/${var.organization_role}"
}

output "org_console_url" {
  value = "https://${aws_organizations_account.org.id}.signin.aws.amazon.com/console"
}
