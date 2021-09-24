module "cluster" {
  source             = "../modules/gcp/container_cluster"
  name               = local.name
  zone               = local.zone
  network            = module.network.google_compute_network
  initial_node_count = "3"
  description        = "cluster"
  min_master_version = "1.13.7-gke.8"
  node_version       = "1.13.7-gke.8"
  gke_cidr_block     = "192.168.0.0/16"
  machine_type       = "g1-small"
  disk_size_gb       = "10"
}
