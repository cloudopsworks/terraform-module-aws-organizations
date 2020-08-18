## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws_region | - | string | `us-east-1` | no |
| env | Environment definition object | any | `<map>` | no |
| organization_allow_billing_access | Allow Billing access to organization structure sub-accounts | string | `false` | no |
| organization_email | Organization e-mail for root id | string | - | yes |
| organization_role | - | string | `OrganizationAllowAllAccess` | no |

## Outputs

| Name | Description |
|------|-------------|
| org_arn | - |
| org_assume_role_id | - |
| org_console_url | - |
| org_id | - |

