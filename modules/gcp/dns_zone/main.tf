resource "google_dns_managed_zone" "zone" {
  name       = "${var.name}-zone"
  dns_name   = var.dns_name
  visibility = var.visibility

  private_visibility_config {
    networks {
      network_url = var.network_url
    }
  }
}
