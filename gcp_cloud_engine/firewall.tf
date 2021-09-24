module "firewall" {
  source        = "../modules/gcp/firewall"
  name          = local.name
  network       = module.subnet.google_compute_network_name
  source_ranges = [module.subnet.google_compute_subnetwork_ip_cidr_range]
  tags          = local.tags
}
