## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_allow_group"></a> [allow\_group](#module\_allow\_group) | ./modules/group-policy | n/a |
| <a name="module_tags"></a> [tags](#module\_tags) | cloudopsworks/tags/local | 1.0.9 |

## Resources

| Name | Type |
|------|------|
| [aws_organizations_account.org](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_role"></a> [access\_role](#input\_access\_role) | (optional) The role to allow access to the organization, defaults to: TerraformRole | `string` | `"TerraformRole"` | no |
| <a name="input_allow_group"></a> [allow\_group](#input\_allow\_group) | (optional) The group to allow access to the organization, defaults to: false | `bool` | `false` | no |
| <a name="input_allowsts_group"></a> [allowsts\_group](#input\_allowsts\_group) | (optional) The group to allow access to the organization, defaults to: terraform-access | `string` | `"terraform-access"` | no |
| <a name="input_environment_name"></a> [environment\_name](#input\_environment\_name) | (required) The environment name | `string` | n/a | yes |
| <a name="input_environment_type"></a> [environment\_type](#input\_environment\_type) | (required) The environment type | `string` | n/a | yes |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | (optional) Extra tags to add to the organization, format { key = value }, defaults to: {} | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | (optional) The name of the account, defaults to: "" | `string` | `""` | no |
| <a name="input_organization_allow_billing_access"></a> [organization\_allow\_billing\_access](#input\_organization\_allow\_billing\_access) | (optional) Allow IAM users to access billing, defaults to: true | `bool` | `true` | no |
| <a name="input_organization_email"></a> [organization\_email](#input\_organization\_email) | (required) The email of the organization | `string` | n/a | yes |
| <a name="input_organization_name"></a> [organization\_name](#input\_organization\_name) | (required) The name of the organization | `string` | n/a | yes |
| <a name="input_organization_parent_id"></a> [organization\_parent\_id](#input\_organization\_parent\_id) | (optional) The parent id of the organization, defaults to: null | `string` | `null` | no |
| <a name="input_organization_role"></a> [organization\_role](#input\_organization\_role) | (optional) The role name for default Admin assumerole in organization, defaults to: OrganizationAllowAllAccessAssumeRole | `string` | `"OrganizationAllowAllAccessAssumeRole"` | no |
| <a name="input_organization_unit"></a> [organization\_unit](#input\_organization\_unit) | (required) The organization unit | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_arn"></a> [account\_arn](#output\_account\_arn) | Organization Account ARN |
| <a name="output_account_assume_role_id"></a> [account\_assume\_role\_id](#output\_account\_assume\_role\_id) | Account Assume Role |
| <a name="output_account_console_url"></a> [account\_console\_url](#output\_account\_console\_url) | Account Console URL |
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | Organization Account ID |
| <a name="output_account_name"></a> [account\_name](#output\_account\_name) | Organization Account Name |
| <a name="output_account_tags"></a> [account\_tags](#output\_account\_tags) | Account Tags |
