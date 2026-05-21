##
# (c) 2021-2026
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#
# IAM group access
module "allow_group" {
  count             = var.allow_group ? 1 : 0
  source            = "./modules/group-policy"
  allowsts_group    = var.allowsts_group
  role_arn          = "arn:aws:iam::${aws_organizations_account.org.id}:role/${var.access_role}"
  organization_unit = lower(var.org.organization_unit)
  environment_name  = lower(var.org.environment_name)
  environment_type  = lower(var.org.environment_type)
}
