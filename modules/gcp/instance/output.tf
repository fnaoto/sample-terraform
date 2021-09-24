output "google_compute_instance_group" {
  value = google_compute_instance_group.instance.self_link
}

output "google_compute_address" {
  value = google_compute_address.instance.address
}
