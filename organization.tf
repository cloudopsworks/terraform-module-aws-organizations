##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#
# This template will setup organization with the information below,
# Set-up of role is automatic + the the access to billing for
# iam users are granted by default
locals {
  all_tags = merge(
    var.extra_tags,
    module.tags.locals.common_tags
  )
}

data "aws_organizations_organizational_unit" "parent" {
  count = var.organization_parent_name != "" ? 1 : 0
  name  = var.organization_parent_name
}

resource "aws_organizations_account" "org" {
  name                       = var.name == "" ? module.tags.locals.environment_name : var.name
  email                      = var.organization_email
  iam_user_access_to_billing = var.organization_allow_billing_access ? "ALLOW" : "DENY"
  role_name                  = var.organization_role
  close_on_deletion          = false
  parent_id = var.organization_parent_id != "" ? var.organization_parent_id : (
    var.organization_parent_name != "" ? data.aws_organizations_organizational_unit.parent[0].id : null
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
