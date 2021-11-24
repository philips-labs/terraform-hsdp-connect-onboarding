resource "hsdp_iam_group" "connect_group" {
  name                  = "DEVICEADMINGROUP_TF"
  roles                 = [hsdp_iam_role.connect_role.id]
  services              = compact(concat([var.provisioning_service_id], var.admin_service_ids))
  managing_organization = var.onboarding_iam_org_id
}

resource "hsdp_iam_group" "connect_admin_group" {
  name                  = "CONNECT_ADMIN_GROUP_TF"
  roles                 = [hsdp_iam_role.connect_admin.id]
  users                 = concat([], data.hsdp_iam_user.admin_user.*.id)
  managing_organization = var.onboarding_iam_org_id
}

resource "hsdp_iam_role" "connect_role" {
  name = "CONNECT_ROLE_TF"
  permissions = [
    "DEVICE.READ",
    "DEVICE.WRITE",
    "GROUP.READ",
    "GROUP.WRITE"
  ]
  managing_organization = var.onboarding_iam_org_id
}

resource "hsdp_iam_role" "connect_readonly" {
  name = "CONNECT_ROLE_READONLY_TF"
  permissions = [
    # Set 1
    "MDM-REGION.READ",
    "MDM-STANDARDSERVICE.READ",
    "MDM-STORAGECLASS.READ",
    "MDM-OAUTHCLIENTSCOPE.READ",
    "MDM-SUBSCRIBERTYPE.READ",
    "MDM-DATASUBSCRIBER.READ",
    "MDM-SERVICEAGENT.READ",
    "MDM-AUTHENTICATIONMETHOD.READ",
    "MDM-DATAADAPTER.READ",
    "MDM-SERVICEACTION.READ",

    # Set 2
    "MDM-PROPOSITION.READ",
    "MDM-APPLICATION.READ",
    "MDM-OAUTHCLIENT.READ",
    "MDM-DEVICEGROUP.READ",
    "MDM-DEVICETYPE.READ",

    # Set 3
    "MDM-SERVICEREFERENCE.READ",
    "MDM-SERVICEACTION.READ",

    # Set 4
    "MDM-FIRMWARECOMPONENT.READ",
    "MDM-FIRMWARECOMPONENTVERSION.READ",
    "MDM-FIRMWAREDISTRIBUTIONREQUEST.READ",

    # Set 5
    "MDM-BUCKET.READ",
    "MDM-DATATYPE.READ",
    "MDM-BLOBDATACONTRACT.READ",
    "MDM-BLOBSUBSCRIPTION.READ",

    # Set 6
    "MDM-DATABROKERSUBSCRIPTION.READ",
    "MDM-DATATYPE.READ"
  ]
  managing_organization = var.onboarding_iam_org_id
}

resource "hsdp_iam_role" "connect_admin" {
  name = "CONNECT_ROLE_ADMIN_TF"
  permissions = [
    # Set 1
    # Read only access is needed to query global MDM resources.
    "MDM-REGION.READ",
    "MDM-STANDARDSERVICE.READ",
    "MDM-STORAGECLASS.READ",
    "MDM-OAUTHCLIENTSCOPE.READ",
    "MDM-SUBSCRIBERTYPE.READ",
    "MDM-DATASUBSCRIBER.READ",
    "MDM-SERVICEAGENT.READ",
    "MDM-AUTHENTICATIONMETHOD.READ",
    "MDM-DATAADAPTER.READ",
    "MDM-SERVICEACTION.READ",

    # Set 2
    # For managing your core hierarchy using APIs, assign these permissions.
    "PROPOSITION.WRITE",
    "MDM-PROPOSITION.CREATE",
    "MDM-PROPOSITION.READ",
    "MDM-PROPOSITION.UPDATE",

    "APPLICATION.WRITE",
    "MDM-APPLICATION.CREATE",
    "MDM-APPLICATION.READ",
    "MDM-APPLICATION.UPDATE",

    "GROUP.READ",

    "MDM-DEVICEGROUP.CREATE",
    "MDM-DEVICEGROUP.READ",
    "MDM-DEVICEGROUP.UPDATE",
    "MDM-DEVICEGROUP.DELETE",

    "MDM-DEVICETYPE.CREATE",
    "MDM-DEVICETYPE.READ",
    "MDM-DEVICETYPE.UPDATE",
    "MDM-DEVICETYPE.DELETE",

    "CLIENT.WRITE",
    "CLIENT.READ",
    # CLIENT.SCOPES
    "CLIENT.DELETE",
    "MDM-OAUTHCLIENT.CREATE",
    "MDM-OAUTHCLIENT.READ",
    "MDM-OAUTHCLIENT.UPDATE",
    "MDM-OAUTHCLIENT.DELETE",

    # Set 3
    # For managing discovery service master data using APIs, assign these permissions.
    "MDM-SERVICEREFERENCE.CREATE",
    "MDM-SERVICEREFERENCE.READ",
    "MDM-SERVICEREFERENCE.UPDATE",
    "MDM-SERVICEREFERENCE.DELETE",
    "MDM-SERVICEACTION.CREATE",
    "MDM-SERVICEACTION.READ",
    "MDM-SERVICEACTION.UPDATE",
    "MDM-SERVICEACTION.DELETE",

    # Set 4
    # For managing of firmware service master data using APIs, assign these permissions.
    "MDM-FIRMWARECOMPONENT.CREATE",
    "MDM-FIRMWARECOMPONENT.READ",
    "MDM-FIRMWARECOMPONENT.UPDATE",
    "MDM-FIRMWARECOMPONENT.DELETE",
    "MDM-FIRMWARECOMPONENTVERSION.CREATE",
    "MDM-FIRMWARECOMPONENTVERSION.READ",
    "MDM-FIRMWARECOMPONENTVERSION.UPDATE",
    "MDM-FIRMWARECOMPONENTVERSION.DELETE",
    "MDM-FIRMWAREDISTRIBUTIONREQUEST.CREATE",
    "MDM-FIRMWAREDISTRIBUTIONREQUEST.READ",
    "MDM-FIRMWAREDISTRIBUTIONREQUEST.UPDATE",

    # Set 5
    # For managing blob repository service master data using APIs, assign these permissions.
    "MDM-BUCKET.CREATE",
    "MDM-BUCKET.READ",
    "MDM-BUCKET.UPDATE",
    "MDM-BUCKET.DELETE",
    "MDM-DATATYPE.CREATE",
    "MDM-DATATYPE.READ",
    "MDM-DATATYPE.UPDATE",
    "MDM-DATATYPE.DELETE",
    "MDM-BLOBDATACONTRACT.CREATE",
    "MDM-BLOBDATACONTRACT.READ",
    "MDM-BLOBDATACONTRACT.UPDATE",
    "MDM-BLOBDATACONTRACT.DELETE",

    "MDM-BLOBSUBSCRIPTION.CREATE",
    "MDM-BLOBSUBSCRIPTION.READ",
    "MDM-BLOBSUBSCRIPTION.UPDATE",
    "MDM-BLOBSUBSCRIPTION.DELETE",

    # Set 6
    # For managing data broker service master data using APIs, assign these permissions.
    "MDM-DATABROKERSUBSCRIPTION.CREATE",
    "MDM-DATABROKERSUBSCRIPTION.READ",
    "MDM-DATABROKERSUBSCRIPTION.UPDATE",
    "MDM-DATABROKERSUBSCRIPTION.DELETE",

    "MDM-DATATYPE.CREATE",
    "MDM-DATATYPE.READ",
    "MDM-DATATYPE.UPDATE",
    "MDM-DATATYPE.DELETE",

    # Other
    "NS_TOPIC.READ",
    "NS_PRODUCER.READ",
    "MDM-AUTHENTICATIONMETHOD.CREATE"
  ]
  managing_organization = var.onboarding_iam_org_id
}
