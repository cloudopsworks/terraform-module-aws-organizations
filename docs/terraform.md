## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tags"></a> [tags](#module\_tags) | elasticguru/tags/local | 1.0.3 |

## Resources

| Name | Type |
|------|------|
| [aws_organizations_account.org](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | n/a | `string` | `"us-east-1"` | no |
| <a name="input_env"></a> [env](#input\_env) | Environment definition object | `any` | `{}` | no |
| <a name="input_organization_allow_billing_access"></a> [organization\_allow\_billing\_access](#input\_organization\_allow\_billing\_access) | Allow Billing access to organization structure sub-accounts | `bool` | `false` | no |
| <a name="input_organization_email"></a> [organization\_email](#input\_organization\_email) | Organization e-mail for root id | `any` | n/a | yes |
| <a name="input_organization_role"></a> [organization\_role](#input\_organization\_role) | n/a | `string` | `"OrganizationAllowAllAccess"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_org_arn"></a> [org\_arn](#output\_org\_arn) | n/a |
| <a name="output_org_assume_role_id"></a> [org\_assume\_role\_id](#output\_org\_assume\_role\_id) | n/a |
| <a name="output_org_console_url"></a> [org\_console\_url](#output\_org\_console\_url) | n/a |
| <a name="output_org_id"></a> [org\_id](#output\_org\_id) | n/a |
