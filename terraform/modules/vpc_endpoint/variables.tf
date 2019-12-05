variable "region" {
}

variable "vpc_id" {
}

variable "subnet_ids" {
}

variable "security_group_ids" {
  type = list(string)
}

variable "private_route_table_ids" {
}

variable "tags" {
  type    = map(string)
  default = {}
}

