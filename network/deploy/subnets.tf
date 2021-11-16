module "vpc-1-subnets" {
    source  = "terraform-google-modules/network/google//modules/subnets"
    version = "~> 3.0.0"

    project_id   = var.project-id[0]
    network_name = var.network-name[0]

    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = var.subnets-region[0]
        },
        {
            subnet_name           = "subnet-02"
            subnet_ip             = "10.10.20.0/24"
            subnet_region         = var.subnets-region[1]
            subnet_private_access = "true"
            subnet_flow_logs      = "true"
            description           = "This subnet has a description"
        }
    ]
}
