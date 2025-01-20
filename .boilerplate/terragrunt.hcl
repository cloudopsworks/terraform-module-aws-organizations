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

include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "{{ .sourceUrl }}"
}

inputs = {
  ## Required
  {{ range .requiredVariables }}
  {{ .Name }} = local.local_vars.org.{{ .Name }}
  {{ end }}

  ## Optional
  {{ range .optionalVariables }}
  {{ .Name }} = try(local.local_vars.{{ .Name }}, {{ .DefaultValue }})
  {{ end }}
  extra_tags                        = local.tags
}