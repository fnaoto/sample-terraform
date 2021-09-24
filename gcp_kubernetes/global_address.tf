module "global_address" {
  source = "../modules/gcp/global_address"
  name   = local.name # for kubernetes.io/ingress.global-static-ip-name
}
