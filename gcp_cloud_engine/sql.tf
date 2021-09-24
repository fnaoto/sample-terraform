module "sql" {
  source                      = "../modules/gcp/sql"
  authorized_networks_address = module.instance.google_compute_address
  name                        = local.name
}
