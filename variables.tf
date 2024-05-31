variable "name" {
  type    = string
  default = ""
}

variable "organization_name" {
  type = string
}

variable "fintech_name" {
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