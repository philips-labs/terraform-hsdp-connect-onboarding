variable "iam_org_id" {
  description = "IAM organization (GUID) you want to onboard to Connect IOT"
  type        = string
  validation {
    condition     = can(regex("^[{]?[0-9a-fA-F]{8}-([0-9a-fA-F]{4}-){3}[0-9a-fA-F]{12}[}]?$", var.iam_org_id))
    error_message = "The iam_org_id value must be a valid GUID."
  }
}

variable "connect_prov_service_id" {
  description = "The IOT Connect provisioning service ID, provided during onboarding by HSDP"
  type        = string
  validation {
    condition     = can(regex("^[{]?[0-9a-fA-F]{8}-([0-9a-fA-F]{4}-){3}[0-9a-fA-F]{12}[}]?$", var.connect_prov_service_id))
    error_message = "The connect_prov_service_id value must be a valid GUID."
  }
}
