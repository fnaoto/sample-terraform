variable "vpc_id" {
}

variable "vpc_cidr" {
}

variable "public_subnets" {
  type = map(string)

  default = {
    ap-northeast-1a = "1"
    ap-northeast-1c = "2"
    ap-northeast-1d = "3"
  }
}

variable "private_subnets" {
  type = map(string)

  default = {
    ap-northeast-1a = "10"
    ap-northeast-1c = "20"
    ap-northeast-1d = "30"
  }
}

variable "gateway_id" {
}

variable "tags" {
  type = map(string)
}

# data

data "aws_availability_zones" "az" {
}

locals {
  az_names = data.aws_availability_zones.az.names
}

