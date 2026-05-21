##
# (c) 2021-2026
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#

data "aws_organizations_organization" "current" {}

data "aws_organizations_organizational_unit" "ou" {
  count     = var.organization_parent_name != "" ? 1 : 0
  parent_id = data.aws_organizations_organization.current.roots[0].id
  name      = var.organization_parent_name
}

resource "aws_organizations_account" "org" {
  name                       = var.name == "" ? module.tags.locals.environment_name : var.name
  email                      = var.organization_email
  iam_user_access_to_billing = var.organization_allow_billing_access ? "ALLOW" : "DENY"
  role_name                  = var.organization_role
  close_on_deletion          = false
  parent_id = var.organization_parent_id != "" ? var.organization_parent_id : (
    var.organization_parent_name != "" ? data.aws_organizations_organizational_unit.ou[0].id : null
  )

  # This is not the best situation but prevents resource regeneration
  # that can mess up an organization
  lifecycle {
    ignore_changes = [
      iam_user_access_to_billing,
      role_name,
      name,
    ]
  }

  tags = local.all_tags
}
