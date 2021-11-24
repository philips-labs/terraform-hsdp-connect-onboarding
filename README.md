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

## Requirements

| Name | Version |
|------|---------|
| hsdp | >= 0.14.1 |

## Providers

| Name | Version |
|------|---------|
| hsdp | >= 0.14.1 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [hsdp_iam_group](https://registry.terraform.io/providers/philips-software/hsdp/0.14.1/docs/resources/iam_group) |
| [hsdp_iam_org](https://registry.terraform.io/providers/philips-software/hsdp/0.14.1/docs/data-sources/iam_org) |
| [hsdp_iam_role](https://registry.terraform.io/providers/philips-software/hsdp/0.14.1/docs/resources/iam_role) |
| [hsdp_iam_user](https://registry.terraform.io/providers/philips-software/hsdp/0.14.1/docs/data-sources/iam_user) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| admin\_user\_ids | List of admin Connect IoT admin users IDs | `list(string)` | `[]` | no |
| admin\_users | List of admin Connect IoT admin users | `list(string)` | `[]` | no |
| onboarding\_iam\_org\_id | IAM organization (GUID) you want to onboard to Connect IoT | `string` | n/a | yes |
| provisioning\_service\_id | The IOT Connect provisioning service ID, provided during onboarding by HSDP | `string` | n/a | yes |
| self\_service\_users | List of users who can use the Connect IoT Self Service UI | `list(string)` | `[]` | no |

## Outputs

No output.

# Contact / Getting help

Post your questions on the `#terraform` HSDP Slack channel

# License

License is MIT
