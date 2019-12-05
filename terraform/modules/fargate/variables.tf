variable "name" {
}

variable "desired_count" {
  default = 0
}

variable "subnets" {
  type = list(string)
}

variable "security_groups" {
  type = list(string)
}

variable "assign_public_ip" {
}

variable "task_cpu" {
}

variable "task_memory" {
}

variable "tags" {
  type = map(string)
}

variable "container_definitions" {
}

variable "container_definitions_vars" {
  type    = map(string)
  default = {}
}

variable "log_group_name" {
}

