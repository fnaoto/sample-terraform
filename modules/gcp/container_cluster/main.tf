resource "google_container_cluster" "gke" {
  name                     = var.name
  location                 = var.zone
  network                  = var.network
  initial_node_count       = var.initial_node_count
  remove_default_node_pool = true
  description              = var.description
  min_master_version       = var.min_master_version
  node_version             = var.node_version

  ip_allocation_policy {
    cluster_ipv4_cidr_block  = cidrsubnet(var.gke_cidr_block, 4, 1)
    services_ipv4_cidr_block = cidrsubnet(var.gke_cidr_block, 4, 2)
  }
}

resource "google_container_node_pool" "gke" {
  name       = "${var.name}-node-pool"
  location   = var.zone
  cluster    = google_container_cluster.gke.name
  node_count = var.initial_node_count

  autoscaling {
    max_node_count = var.max_node_count
    min_node_count = var.min_node_count
  }

  node_config {
    machine_type = var.machine_type
    disk_size_gb = var.disk_size_gb
    preemptible  = false

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/compute",
    ]
  }
}
