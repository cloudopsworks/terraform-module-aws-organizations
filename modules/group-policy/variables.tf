##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#
# variable "tags" {
#   type    = map(string)
#   default = {}
# }

# STS Assume Role Group allowed
variable "allowsts_group" {
  description = "Allow STS Assume Role"
  type = string
}

# STS Assume Role User allowed
variable "role_arn" {
  description = "Role ARN"
  type = string
}

# Environment Name for tags
variable "environment_name" {
  description = "Environment Name"
  type = string
}

# Environment Type for tags
variable "environment_type" {
  description = "Environment Type"
  type = string
}

# Organization Unit for tags
variable "organization_unit" {
  description = "Organization Unit"
  type = string
}