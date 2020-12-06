variable "name" {
  type = string
}

variable "type" {
  type    = string
  default = "infra_metric"
}

variable "event" {
  type = string
}

variable "select" {
  type = string
}

variable "comparison" {
  type    = string
  default = "above"
}

variable "where" {
  type = string
}

variable "integration_provider" {
  type    = string
  default = null
}

variable "critical" {
  type = list(any)
}

variable "warning" {
  type = list(any)
}
