module "instance" {
  source     = "../modules/gcp/instance"
  name       = local.name
  subnetwork = module.subnet.google_compute_subnetwork_name
  tags       = local.tags
}
