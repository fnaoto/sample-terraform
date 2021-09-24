resource "google_compute_global_address" "global_address" {
  name = "${var.name}-global-ip"
}
