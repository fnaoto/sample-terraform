module "lb" {
  source = "../modules/gcp/lb"
  group  = module.instance.google_compute_instance_group
  name   = local.name
}
