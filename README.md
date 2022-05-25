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
