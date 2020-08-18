variable "env" {
  description = "Environment definition object"
  type        = any
  default     = {}
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
