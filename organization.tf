# This template will setup organization with the information below,
# Set-up of role is automatic + the the access to billing for
# iam users are granted by default

resource "aws_organizations_account" "org" {
  name                       = module.tags.locals.organization_name
  email                      = var.organization_email
  iam_user_access_to_billing = var.organization_allow_billing_access ? "ALLOW" : "DENY"
  role_name                  = var.organization_role

  # This is not the best situation but prevents resource regeneration
  # that can mess up an organization
  lifecycle {
    ignore_changes = [
      iam_user_access_to_billing,
      role_name,
      name,
    ]
  }
}
