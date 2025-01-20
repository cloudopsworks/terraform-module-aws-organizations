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
  ## Required
  organization_name: {{ .organization_name }}
  organization_unit: {{ .organization_unit }}
  environment_name: {{ .environment_name }}
  environment_type: {{ .environment_type }}
  organization_email: {{ .organization_email }}

  ## Optional
  {{- range .optionalVariables }}
  {{- if and (ne .Name "extra_tags") (ne .Name "organization_allow_billing_access") }}
  {{ .Name }} = try(local.local_vars.{{ .Name }}, {{ .DefaultValue }})
  {{- end }}
  {{- end }}
  organization_allow_billing_access = {{ .organization_allow_billing_access }}
  extra_tags = local.tags
}