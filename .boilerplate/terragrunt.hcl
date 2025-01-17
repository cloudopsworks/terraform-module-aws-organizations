locals {
  local_vars  = yamldecode(file("./inputs.yaml"))
  global_vars = yamldecode(file(find_in_parent_folders("global-inputs.yaml")))
  global_tags = jsondecode(file(find_in_parent_folders("global-tags.json")))
  local_tags  = jsondecode(file("./local-tags.json"))

  tags = merge(
    local.global_tags,
    local.local_tags
  )
}

terraform {
  source = "{{ .sourceUrl }}"
}

inputs = {
  organization_name                 = local.local_vars.org.name
  organization_unit                 = local.local_vars.org.organization_unit
  environment_type                  = local.local_vars.org.environment_type
  environment_name                  = local.local_vars.org.environment_name
  organization_email                = local.local_vars.org.email
  organization_allow_billing_access = {{ .optionalVariables.org_allow_billing_access }}
  extra_tags                        = local.tags
}