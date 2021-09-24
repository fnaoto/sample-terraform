variable "name" {
  type = string
}

variable "zone" {
  type = string
}

variable "network" {
  type = string
}

variable "initial_node_count" {
  type = number
}

variable "description" {
  type = string
}

variable "min_master_version" {
  type = string
}

variable "node_version" {
  type = string
}

variable "gke_cidr_block" {
  type = string
}

variable "max_node_count" {
  type    = number
  default = 3
}

variable "min_node_count" {
  type    = number
  default = 1
}

variable "machine_type" {
  type = string
}

variable "disk_size_gb" {
  type = number
}

