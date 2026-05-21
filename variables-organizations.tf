##
# (c) 2021-2026
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#

# name: "" # (Optional) Display name of the AWS account. Defaults to the environment name tag. Default: ""
variable "name" {
  description = "(optional) The display name of the AWS Organizations account. Defaults to the environment name from tags when empty."
  type        = string
  default     = ""
}

# organization_email: "admin@example.com" # (Required) Email address for the AWS Organizations account root user.
variable "organization_email" {
  description = "(required) The root user email address for the AWS Organizations account."
  type        = string
}

# organization_role: "OrganizationAllowAllAccessAssumeRole" # (Optional) IAM role name created for cross-account access. Default: "OrganizationAllowAllAccessAssumeRole"
variable "organization_role" {
  description = "(optional) IAM role name created in the account for cross-account access. Default: OrganizationAllowAllAccessAssumeRole"
  type        = string
  default     = "OrganizationAllowAllAccessAssumeRole"
}

# organization_allow_billing_access: true # (Optional) Allow IAM users to access the billing console. Default: true
variable "organization_allow_billing_access" {
  description = "(optional) Whether IAM users are allowed access to the billing console. Default: true"
  type        = bool
  default     = true
}

# organization_parent_name: "" # (Optional) Name of the Organizational Unit to place this account under. Takes precedence if organization_parent_id is also set. Default: ""
variable "organization_parent_name" {
  description = "(optional) Name of the parent Organizational Unit. Mutually exclusive with organization_parent_id; this takes precedence. Default: \"\""
  type        = string
  default     = ""
  nullable    = false
}

# organization_parent_id: "" # (Optional) ID of the Organizational Unit (ou-xxxx) to place this account under. Default: ""
variable "organization_parent_id" {
  description = "(optional) ID of the parent Organizational Unit (e.g. ou-xxxx-xxxxxxxx). Default: \"\""
  type        = string
  default     = ""
}

# allow_group: false # (Optional) Create an IAM group policy that allows assume-role into this account. Default: false
variable "allow_group" {
  description = "(optional) Whether to create an IAM group policy allowing assume-role access into this account. Default: false"
  type        = bool
  default     = false
}

# allowsts_group: "terraform-access" # (Optional) Name of the IAM group to grant assume-role access. Default: "terraform-access"
variable "allowsts_group" {
  description = "(optional) Name of the IAM group that receives assume-role permissions into this account. Default: terraform-access"
  type        = string
  default     = "terraform-access"
}

# access_role: "TerraformRole" # (Optional) Name of the IAM role to assume in this account for group policy. Default: "TerraformRole"
variable "access_role" {
  description = "(optional) Name of the IAM role to be assumed in this account by the allowsts_group. Default: TerraformRole"
  type        = string
  default     = "TerraformRole"
}
