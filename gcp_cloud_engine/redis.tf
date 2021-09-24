module "redis" {
  source             = "../modules/gcp/redis"
  authorized_network = module.network.google_compute_network_id
  name               = local.name
}
