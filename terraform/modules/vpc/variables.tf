variable "cidr_block" {}

variable "tags" {
  type = "map"
}

variable "enable_dns_support" {
  default = true
}

variable "enable_dns_hostnames" {
  default = false
}
