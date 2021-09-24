variable "name" {
  type = string
}

variable "routing_mode" {
  type    = string
  default = "REGIONAL"
}

variable "auto_create_subnetworks" {
  type    = bool
  default = false
}

