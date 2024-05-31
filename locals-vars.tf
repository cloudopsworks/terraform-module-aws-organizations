module "tags" {
  source  = "cloudopsworks/tags/local"
  version = "1.0.8"

  env = {
    organization_name = var.organization_name
    org_unit_name     = var.fintech_name
    environment_name  = var.environment_name
    environment_type  = var.environment_type
  }
}
