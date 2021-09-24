output "google_compute_network_id" {
  value = google_compute_network.network.id
}

output "google_compute_network_name" {
  value = google_compute_network.network.name
}

output "google_compute_subnetwork_name" {
  value = google_compute_subnetwork.network.name
}

output "google_compute_subnetwork_ip_cidr_range" {
  value = google_compute_subnetwork.network.ip_cidr_range
}
