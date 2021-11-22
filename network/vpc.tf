module "vpc-1" {
    source  = "terraform-google-modules/network/google//modules/vpc"
    version = "~> 3.0"

    project_id   = var.project-id[0]
    network_name = var.network-name[0]

    shared_vpc_host = false
}

module "vpc-2" {
    source  = "terraform-google-modules/network/google//modules/vpc"
    version = "~> 3.0"

    project_id   = var.project-id[1]
    network_name = var.network-name[1]

    shared_vpc_host = false
}
