terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "~> 2.6.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.57"
    }
  }
  required_version = ">= 0.14"
}

provider "newrelic" {
  region = "US"
}

provider "aws" {
  region = var.region
}

data "aws_caller_identity" "current" {}
