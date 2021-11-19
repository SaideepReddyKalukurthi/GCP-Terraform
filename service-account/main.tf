
#Service account
module "service_accounts" {
  source        = "terraform-google-modules/service-accounts/google"
  version       = "~> 3.0"
  project_id    = var.project_id
  prefix        = "demo-saideepreddy"
  names         = ["first"]
  project_roles = [
    "${var.project_id}=>roles/compute.networkAdmin",
    "${var.project_id}=>roles/storage.admin",
  ]
}