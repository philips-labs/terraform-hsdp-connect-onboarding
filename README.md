# HSDP Connect IoT onboarding module
This module creates all necessary IAM groups and roles to support successful onboarding onto the HSDP Connect IoT services. Example usage:

```hcl
module "connect_onboarding" {
  source = "philips-labs/connect-onboarding/hsdp"

  onboarding_iam_org_id = var.iam_org_id
  admin_users           = ["bosmang"]
  self_service_users    = ["bosmang"]
}
```

<!--- BEGIN_TF_DOCS --->
<!--- END_TF_DOCS --->

# Contact / Getting help

Post your questions on the `#terraform` HSDP Slack channel

# License

License is MIT

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_hsdp"></a> [hsdp](#requirement\_hsdp) | >= 0.14.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hsdp"></a> [hsdp](#provider\_hsdp) | >= 0.14.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hsdp_iam_group.connect_admin_group](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/resources/iam_group) | resource |
| [hsdp_iam_group.connect_group](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/resources/iam_group) | resource |
| [hsdp_iam_group.connect_self_service](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/resources/iam_group) | resource |
| [hsdp_iam_role.connect_admin](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/resources/iam_role) | resource |
| [hsdp_iam_role.connect_readonly](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/resources/iam_role) | resource |
| [hsdp_iam_role.connect_role](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/resources/iam_role) | resource |
| [hsdp_iam_role.connectss_role](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/resources/iam_role) | resource |
| [hsdp_iam_org.org](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/data-sources/iam_org) | data source |
| [hsdp_iam_user.admin_user](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/data-sources/iam_user) | data source |
| [hsdp_iam_user.self_service_user](https://registry.terraform.io/providers/philips-software/hsdp/latest/docs/data-sources/iam_user) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_service_ids"></a> [admin\_service\_ids](#input\_admin\_service\_ids) | List of service credentials for Connect IoT admin | `list(string)` | `[]` | no |
| <a name="input_admin_user_ids"></a> [admin\_user\_ids](#input\_admin\_user\_ids) | List of admin Connect IoT admin users IDs | `list(string)` | `[]` | no |
| <a name="input_admin_users"></a> [admin\_users](#input\_admin\_users) | List of admin Connect IoT admin users | `list(string)` | `[]` | no |
| <a name="input_onboarding_iam_org_id"></a> [onboarding\_iam\_org\_id](#input\_onboarding\_iam\_org\_id) | IAM organization (GUID) you want to onboard to Connect IOT | `string` | n/a | yes |
| <a name="input_provisioning_service_id"></a> [provisioning\_service\_id](#input\_provisioning\_service\_id) | The Connect IoT provisioning service ID, provided during onboarding by HSDP | `string` | `""` | no |
| <a name="input_self_service_users"></a> [self\_service\_users](#input\_self\_service\_users) | List of users who can use the Connect IoT Self Service UI | `list(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->