resource "google_dns_record_set" "record" {
  name         = var.name
  managed_zone = var.managed_zone
  type         = var.type
  ttl          = 300
  rrdatas      = var.rrdatas
}
