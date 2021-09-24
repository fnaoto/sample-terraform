module "subnet" {
  source  = "../modules/gcp/subnet"
  name    = local.name
  network = module.network.google_compute_network_name
}
