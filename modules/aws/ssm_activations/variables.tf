variable "name" {
}

variable "tags" {
  type = map(string)
}

variable "expiration_date" {
  default = "1 month"
}
