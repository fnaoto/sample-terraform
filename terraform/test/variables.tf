variable "region" {
  default = "ap-northeast-1"
}

variable "project" {
  default = "aws-test"
}

variable "vpc_cidr" {
  default = "172.16.0.0/16"
}

locals {
  ws   = "${terraform.workspace}"
  name = "${var.project}-${terraform.workspace}"

  tags = {
    env     = "${terraform.workspace}"
    project = "${var.project}"
  }
}
