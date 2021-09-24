variable name {
  type = string
}

variable subnet_ip_cidr_range {
  type    = string
  default = "192.168.1.0/24"
}

variable region {
  type    = string
  default = "asia-northeast1"
}

variable "network" {
  type = string
}
