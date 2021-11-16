module "vpc" {
    source  = "terraform-google-modules/network/google//modules/vpc"
    version = "~> 3.0"

    project_id   = var.project-id[0]
    network_name = var.network-name[0]

    shared_vpc_host = false
}