##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#
# IAM group access
module "allow_group" {
  count             = var.allow_group ? 1 : 0
  source            = "./modules/group-policy"
  allowsts_group    = var.allowsts_group
  role_arn          = "arn:aws:iam::${aws_organizations_account.org.id}:role/${var.access_role}"
  organization_unit = lower(var.organization_unit)
  environment_name  = lower(var.environment_name)
  environment_type  = lower(var.environment_name)
}
