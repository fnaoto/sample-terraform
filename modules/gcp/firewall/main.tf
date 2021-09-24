resource "google_compute_firewall" "from_all" {
  name    = "${var.name}-firewall-from-all"
  network = var.network

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = var.tags
}

resource "google_compute_firewall" "from_internal" {
  name    = "${var.name}-firewall-from-internal"
  network = var.network

  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }

  allow {
    protocol = "icmp"
  }

  source_ranges = var.source_ranges
  target_tags   = var.tags
}
