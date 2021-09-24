variable name {
  type = string
}

variable "managed_zone" {
  type = string
}

variable "rrdatas" {
  type = list(string)
}

variable "type" {
  type    = string
  default = "A"
}
