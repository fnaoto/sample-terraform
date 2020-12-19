variable "region" {
  default = "ap-northeast-1"
}

variable "project" {
  default = "newrelic-sample"
}

variable "slack_hooks_url" {
  default = "https://dummy_slack_webhook_url"
}

variable "slack_channel_name" {
  default = "#dummy_slack_channel"
}

variable "apm_app_name" {
  default = "dummy_app"
}

locals {
  ws   = terraform.workspace
  name = "${var.project}-${terraform.workspace}"

  tags = {
    env     = terraform.workspace
    project = var.project
  }
}
