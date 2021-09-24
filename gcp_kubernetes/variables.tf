provider "google" {
  region = "asia-northeast1"
}

terraform {
  backend "gcs" {}
}

locals {
  name = "sample"
  zone = "asia-northeast1-a"

  tags = [
    local.name,
    "kubernetes",
  ]
}
