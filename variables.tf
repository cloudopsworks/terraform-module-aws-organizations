variable "env" {
  description = "Environment definition object"
  type = object({
    organization_name = string
    org_unit_name     = string
    environment_name  = string
    environment_type  = string
  })
  default = {
    organization_name = ""
    org_unit_name     = ""
    environment_name  = ""
    environment_type  = ""
  }
}

variable "organization_email" {
  description = "Organization e-mail for root id"
}

variable "organization_allow_billing_access" {
  description = "Allow Billing access to organization structure sub-accounts"
  default     = false
}

variable "organization_role" {
  default = "OrganizationAllowAllAccess"
}

variable "aws_region" {
  default = "us-east-1"
}
