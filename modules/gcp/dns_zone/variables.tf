variable name {
  type = string
}

variable "dns_name" {
  type    = string
  default = "private.internal."
}

variable "visibility" {
  type    = string
  default = "private"
}

variable "network_url" {
  type = string
}
