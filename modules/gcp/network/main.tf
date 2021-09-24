resource "google_compute_network" "network" {
  name                    = "${var.name}-network"
  routing_mode            = var.routing_mode
  auto_create_subnetworks = var.auto_create_subnetworks
}
