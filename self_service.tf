resource "hsdp_iam_group" "connect_self_service" {
  name                  = "CONNECTSS_GROUP_TF"
  roles                 = [hsdp_iam_role.connectss_role.id]
  users                 = concat([], data.hsdp_iam_user.self_service_user.*.id)
  managing_organization = var.onboarding_iam_org_id
}

resource "hsdp_iam_role" "connectss_role" {
  name = "CONNECTSS_ROLE_TF"
  permissions = [
    "CONNECTSS-PORTAL-GLOBAL.ALL",
    "CONNECTSS-PORTAL-PROVCORE.ALL",
    "CONNECTSS-PORTAL-PROVCLIENT.ALL",
    "CONNECTSS-PORTAL-DSC.ALL",
    "CONNECTSS-PORTAL-FWS.ALL",
    "CONNECTSS-PORTAL-BLR.ALL",
    "CONNECTSS-PORTAL-DBS.ALL"
  ]
  managing_organization = var.onboarding_iam_org_id
}
