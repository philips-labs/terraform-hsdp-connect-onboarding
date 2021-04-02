variable "onboarding_iam_org_id" {
  description = "IAM organization (GUID) you want to onboard to Connect IOT"
  type        = string
  validation {
    condition     = can(regex("^[{]?[0-9a-fA-F]{8}-([0-9a-fA-F]{4}-){3}[0-9a-fA-F]{12}[}]?$", var.onboarding_iam_org_id))
    error_message = "The onboarding_iam_org_id value must be a valid GUID."
  }
}

variable "provisioning_service_id" {
  description = "The Connect IoT provisioning service ID, provided during onboarding by HSDP"
  type        = string
  validation {
    condition     = can(regex("^[{]?[0-9a-fA-F]{8}-([0-9a-fA-F]{4}-){3}[0-9a-fA-F]{12}[}]?$", var.provisioning_service_id))
    error_message = "The provisioning_service_id value must be a valid GUID."
  }
}

variable "admin_users" {
  description = "List of admin Connect IoT admin users"
  type        = list(string)
  default     = []
}

variable "admin_user_ids" {
  description = "List of admin Connect IoT admin users IDs"
  type        = list(string)
  default     = []
}

variable "self_service_users" {
  description = "List of users who can use the Connect IoT Self Service UI"
  type        = list(string)
  default     = []
}
