module "redis" {
  source             = "../modules/gcp/redis"
  authorized_network = module.subnet.google_compute_network_id
  name               = local.name
}
