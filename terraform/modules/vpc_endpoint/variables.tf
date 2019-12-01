variable "region" {}

variable "vpc_id" {}

variable "subnet_ids" {}

variable "security_group_ids" {
  type = "list"
}

variable "private_route_table_ids" {}

variable "tags" {
  type    = "map"
  default = {}
}
