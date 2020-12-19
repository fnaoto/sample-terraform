variable "name" {
  type = string
}

variable "type" {
  type = string
}

variable "value_function" {
  type = string
}

variable "violation_time_limit" {
  type    = string
  default = "ONE_HOUR"
}

variable "query" {
  type = string
}

variable "evaluation_offset" {
  type    = number
  default = 3
}

variable "critical" {
  type = list(any)
}

variable "warning" {
  type    = list(any)
  default = []
}
