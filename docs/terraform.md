## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.46.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_allow_group"></a> [allow\_group](#module\_allow\_group) | ./modules/group-policy | n/a |
| <a name="module_tags"></a> [tags](#module\_tags) | cloudopsworks/tags/local | 1.0.9 |

## Resources

| Name | Type |
|------|------|
| [aws_organizations_account.org](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |
| [aws_organizations_organization.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organization) | data source |
| [aws_organizations_organizational_unit.ou](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organizational_unit) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_role"></a> [access\_role](#input\_access\_role) | (optional) Name of the IAM role to be assumed in this account by the allowsts\_group. Default: TerraformRole | `string` | `"TerraformRole"` | no |
| <a name="input_allow_group"></a> [allow\_group](#input\_allow\_group) | (optional) Whether to create an IAM group policy allowing assume-role access into this account. Default: false | `bool` | `false` | no |
| <a name="input_allowsts_group"></a> [allowsts\_group](#input\_allowsts\_group) | (optional) Name of the IAM group that receives assume-role permissions into this account. Default: terraform-access | `string` | `"terraform-access"` | no |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | Extra tags to add to the resources | `map(string)` | `{}` | no |
| <a name="input_is_hub"></a> [is\_hub](#input\_is\_hub) | Is this a hub or spoke configuration? | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | (optional) The display name of the AWS Organizations account. Defaults to the environment name from tags when empty. | `string` | `""` | no |
| <a name="input_org"></a> [org](#input\_org) | Organization details | <pre>object({<br/>    organization_name = string<br/>    organization_unit = string<br/>    environment_type  = string<br/>    environment_name  = string<br/>  })</pre> | n/a | yes |
| <a name="input_organization_allow_billing_access"></a> [organization\_allow\_billing\_access](#input\_organization\_allow\_billing\_access) | (optional) Whether IAM users are allowed access to the billing console. Default: true | `bool` | `true` | no |
| <a name="input_organization_email"></a> [organization\_email](#input\_organization\_email) | (required) The root user email address for the AWS Organizations account. | `string` | n/a | yes |
| <a name="input_organization_parent_id"></a> [organization\_parent\_id](#input\_organization\_parent\_id) | (optional) ID of the parent Organizational Unit (e.g. ou-xxxx-xxxxxxxx). Default: "" | `string` | `""` | no |
| <a name="input_organization_parent_name"></a> [organization\_parent\_name](#input\_organization\_parent\_name) | (optional) Name of the parent Organizational Unit. Mutually exclusive with organization\_parent\_id; this takes precedence. Default: "" | `string` | `""` | no |
| <a name="input_organization_role"></a> [organization\_role](#input\_organization\_role) | (optional) IAM role name created in the account for cross-account access. Default: OrganizationAllowAllAccessAssumeRole | `string` | `"OrganizationAllowAllAccessAssumeRole"` | no |
| <a name="input_spoke_def"></a> [spoke\_def](#input\_spoke\_def) | Spoke ID Number, must be a 3 digit number | `string` | `"001"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_arn"></a> [account\_arn](#output\_account\_arn) | The ARN of the provisioned AWS Organizations account. |
| <a name="output_account_assume_role_id"></a> [account\_assume\_role\_id](#output\_account\_assume\_role\_id) | Full ARN of the default cross-account assume-role for the provisioned account. |
| <a name="output_account_console_url"></a> [account\_console\_url](#output\_account\_console\_url) | AWS Console sign-in URL scoped to the provisioned account. |
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | The AWS account ID of the provisioned Organizations account. |
| <a name="output_account_name"></a> [account\_name](#output\_account\_name) | The display name of the provisioned AWS Organizations account. |
| <a name="output_account_tags"></a> [account\_tags](#output\_account\_tags) | Map of organization-level metadata tags applied to the provisioned account. |
