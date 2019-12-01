variable "name" {}
variable "vpc_id" {}

variable "egress_port" {
  default = 0
}

variable "ingress_port" {}

variable "ingress_protocol" {
  default = "tcp"
}

variable "egress_protocol" {
  default = "-1"
}

variable "ingress_cidr_blocks" {
  default = []
}

variable "egress_cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "ingress_source_sg_id" {
  default = ""
}

variable "egress_source_sg_id" {
  default = ""
}

variable "tags" {
  type = "map"
}
