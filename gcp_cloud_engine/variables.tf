provider "google" {
  region = "asia-northeast1"
}

terraform {
  # backend "gcs" {}
}

locals {
  name = "sample"
  tags = [
    local.name,
    "http-server",
    "https-server",
  ]
}
