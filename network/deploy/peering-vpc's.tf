module "peering" {
  source = "terraform-google-modules/network/google//modules/network-peering"

  prefix        = "peer-network"
  local_network = module.vpc-1.network_self_link	
  peer_network  = module.vpc-2.network_self_link
}