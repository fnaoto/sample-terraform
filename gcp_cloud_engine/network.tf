module "network" {
  source                  = "../modules/gcp/network"
  name                    = local.name
  auto_create_subnetworks = false
}
