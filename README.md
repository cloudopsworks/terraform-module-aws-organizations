<!-- 
  ** DO NOT EDIT THIS FILE
  ** 
  ** This file was automatically generated. 
  ** 1) Make all changes to `README.yaml` 
  ** 2) Run `make init` (you only need to do this once)
  ** 3) Run`make readme` to rebuild this file. 
  -->
[![README Header][readme_header_img]][readme_header_link]

[![cloudopsworks][logo]](https://cloudops.works/)

# Terraform Organizations Module


Organizations Module for AWS organization management.


---

This project is part of our comprehensive approach towards DevOps Acceleration. 
[<img align="right" title="Share via Email" width="24" height="24" src="https://docs.cloudops.works/images/ionicons/ios-mail.svg"/>][share_email]
[<img align="right" title="Share on Google+" width="24" height="24" src="https://docs.cloudops.works/images/ionicons/logo-googleplus.svg" />][share_googleplus]
[<img align="right" title="Share on Facebook" width="24" height="24" src="https://docs.cloudops.works/images/ionicons/logo-facebook.svg" />][share_facebook]
[<img align="right" title="Share on Reddit" width="24" height="24" src="https://docs.cloudops.works/images/ionicons/logo-reddit.svg" />][share_reddit]
[<img align="right" title="Share on LinkedIn" width="24" height="24" src="https://docs.cloudops.works/images/ionicons/logo-linkedin.svg" />][share_linkedin]
[<img align="right" title="Share on Twitter" width="24" height="24" src="https://docs.cloudops.works/images/ionicons/logo-twitter.svg" />][share_twitter]




It's 100% Open Source and licensed under the [APACHE2](LICENSE).



















## Makefile Targets
```
Available targets:

  help                                Help screen
  help/all                            Display help for all targets
  help/short                          This help short screen
  lint                                Lint terraform code
  tag                                 Tag the current version
  version                             Update generate the version

```
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



## Help

**Got a question?** We got answers. 

File a GitHub [issue](https://github.com/cloudopsworks/terraform-aws-organizations/issues), send us an [email][email] or join our [Slack Community][slack].

[![README Commercial Support][readme_commercial_support_img]][readme_commercial_support_link]

## DevOps Tools

## Slack Community


## Newsletter

## Office Hours

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/cloudopsworks/terraform-aws-organizations/issues) to report any bugs or file feature requests.

### Developing




## Copyrights

Copyright © 2024-2025 [Cloud Ops Works LLC](https://cloudops.works)





## License 

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) 

See [LICENSE](LICENSE) for full details.

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.









## Trademarks

All other trademarks referenced herein are the property of their respective owners.

## About

This project is maintained by [Cloud Ops Works LLC][website]. 


### Contributors

|  [![Cristian Beraha][berahac_avatar]][berahac_homepage]<br/>[Cristian Beraha][berahac_homepage] |
|---|

  [berahac_homepage]: https://github.com/berahac
  [berahac_avatar]: https://github.com/berahac.png?size=50

[![README Footer][readme_footer_img]][readme_footer_link]
[![Beacon][beacon]][website]

  [logo]: https://cloudops.works/logo-300x69.svg
  [docs]: https://cowk.io/docs?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=docs
  [website]: https://cowk.io/homepage?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=website
  [github]: https://cowk.io/github?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=github
  [jobs]: https://cowk.io/jobs?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=jobs
  [hire]: https://cowk.io/hire?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=hire
  [slack]: https://cowk.io/slack?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=slack
  [linkedin]: https://cowk.io/linkedin?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=linkedin
  [twitter]: https://cowk.io/twitter?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=twitter
  [testimonial]: https://cowk.io/leave-testimonial?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=testimonial
  [office_hours]: https://cloudops.works/office-hours?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=office_hours
  [newsletter]: https://cowk.io/newsletter?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=newsletter
  [email]: https://cowk.io/email?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=email
  [commercial_support]: https://cowk.io/commercial-support?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=commercial_support
  [we_love_open_source]: https://cowk.io/we-love-open-source?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=we_love_open_source
  [terraform_modules]: https://cowk.io/terraform-modules?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=terraform_modules
  [readme_header_img]: https://cloudops.works/readme/header/img
  [readme_header_link]: https://cloudops.works/readme/header/link?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=readme_header_link
  [readme_footer_img]: https://cloudops.works/readme/footer/img
  [readme_footer_link]: https://cloudops.works/readme/footer/link?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=readme_footer_link
  [readme_commercial_support_img]: https://cloudops.works/readme/commercial-support/img
  [readme_commercial_support_link]: https://cloudops.works/readme/commercial-support/link?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/terraform-aws-organizations&utm_content=readme_commercial_support_link
  [share_twitter]: https://twitter.com/intent/tweet/?text=Terraform+Organizations+Module&url=https://github.com/cloudopsworks/terraform-aws-organizations
  [share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=Terraform+Organizations+Module&url=https://github.com/cloudopsworks/terraform-aws-organizations
  [share_reddit]: https://reddit.com/submit/?url=https://github.com/cloudopsworks/terraform-aws-organizations
  [share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/cloudopsworks/terraform-aws-organizations
  [share_googleplus]: https://plus.google.com/share?url=https://github.com/cloudopsworks/terraform-aws-organizations
  [share_email]: mailto:?subject=Terraform+Organizations+Module&body=https://github.com/cloudopsworks/terraform-aws-organizations
  [beacon]: https://ga-beacon.cloudops.works/G-7XWMFVFXZT/cloudopsworks/terraform-aws-organizations?pixel&cs=github&cm=readme&an=terraform-aws-organizations
