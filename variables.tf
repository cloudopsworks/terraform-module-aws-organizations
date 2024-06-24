##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#
variable "name" {
  type    = string
  default = ""
}

variable "organization_name" {
  type = string
}

variable "organization_unit" {
  type = string
}

variable "environment_type" {
  type = string
}

variable "environment_name" {
  type = string
}

variable "organization_email" {
  type = string
}

variable "organization_role" {
  type    = string
  default = "OrganizationAllowAllAccessAssumeRole"
}

variable "organization_allow_billing_access" {
  type    = bool
  default = true
}

variable "organization_parent_id" {
  type    = string
  default = null
}

variable "extra_tags" {
  type    = map(string)
  default = {}
}

variable "allow_group" {
  type    = bool
  default = false
}

variable "allowsts_group" {
  type    = string
  default = "terraform-access"
}

variable "access_role" {
  type    = string
  default = "TerraformRole"
}