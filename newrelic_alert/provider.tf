provider "newrelic" {
  region  = "US"
  version = "~> 2.6.0"
}

provider "aws" {
  region = var.region
}

data "aws_caller_identity" "current" {}
