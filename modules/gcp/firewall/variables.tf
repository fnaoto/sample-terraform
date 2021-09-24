variable "name" {
  type = string
}

variable "network" {
  type = string
}

variable "source_ranges" {
  type = list(string)
}

variable "tags" {
  type = list(string)
}
