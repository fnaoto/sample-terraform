resource "google_compute_global_address" "lb" {
  name         = "${var.name}-global-address"
  ip_version   = "IPV4"
  address_type = "EXTERNAL"
}

resource "google_compute_health_check" "lb" {
  name               = "${var.name}-health-check"
  timeout_sec        = 1
  check_interval_sec = 1

  http_health_check {
    request_path = "/"
    port         = 80
  }
}

resource "google_compute_backend_service" "lb" {
  name        = "${var.name}-backend-service"
  port_name   = "http"
  protocol    = "HTTP"
  timeout_sec = 10

  backend {
    group = var.group
  }

  health_checks = [google_compute_health_check.lb.self_link]
}

resource "google_compute_url_map" "lb" {
  name            = "${var.name}-url-map"
  default_service = google_compute_backend_service.lb.self_link
}

resource "google_compute_target_http_proxy" "http" {
  name    = "${var.name}-http-proxy"
  url_map = google_compute_url_map.lb.self_link
}

resource "google_compute_global_forwarding_rule" "http" {
  name       = "${var.name}-http-rule"
  target     = google_compute_target_http_proxy.http.self_link
  ip_address = google_compute_global_address.lb.address
  port_range = "80"
  depends_on = [google_compute_global_address.lb]
}
