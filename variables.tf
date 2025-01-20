##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#
variable "name" {
  description = "(optional) The name of the account, defaults to: \"\""
  type    = string
  default = ""
}

variable "organization_name" {
  description = "(required) The name of the organization"
  type = string
}

variable "organization_unit" {
  description = "(required) The organization unit"
  type = string
}

variable "environment_type" {
  description = "(required) The environment type"
  type = string
}

variable "environment_name" {
  description = "(required) The environment name"
  type = string
}

variable "organization_email" {
  description = "(required) The email of the organization"
  type = string
}

variable "organization_role" {
  description = "(optional) The role name for default Admin assumerole in organization, defaults to: OrganizationAllowAllAccessAssumeRole"
  type    = string
  default = "OrganizationAllowAllAccessAssumeRole"
}

variable "organization_allow_billing_access" {
  description = "(optional) Allow IAM users to access billing, defaults to: true"
  type    = bool
  default = true
}

variable "organization_parent_id" {
  description = "(optional) The parent id of the organization, defaults to: null"
  type    = string
  default = null
}

variable "extra_tags" {
  description = "(optional) Extra tags to add to the organization, format { key = value }, defaults to: {}"
  type    = map(string)
  default = {}
}

variable "allow_group" {
  description = "(optional) The group to allow access to the organization, defaults to: false"
  type    = bool
  default = false
}

variable "allowsts_group" {
  description = "(optional) The group to allow access to the organization, defaults to: terraform-access"
  type    = string
  default = "terraform-access"
}

variable "access_role" {
  description = "(optional) The role to allow access to the organization, defaults to: TerraformRole"
  type    = string
  default = "TerraformRole"
}