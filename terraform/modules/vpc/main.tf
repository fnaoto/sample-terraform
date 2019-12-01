resource "aws_vpc" "vpc" {
  cidr_block           = "${var.cidr_block}"
  enable_dns_support   = "${var.enable_dns_support}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"
  tags                 = "${var.tags}"
}

resource "aws_internet_gateway" "vpc" {
  vpc_id = "${aws_vpc.vpc.id}"
  tags   = "${var.tags}"
}
