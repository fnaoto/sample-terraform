module "subnet" {
  source = "../modules/gcp/subnet"
  name   = local.name
}
