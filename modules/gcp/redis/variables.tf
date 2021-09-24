variable name {
  type = string
}

variable redis_tier {
  type    = string
  default = "STANDARD_HA"
}

variable redis_memory_size_gb {
  type    = number
  default = 1
}

variable region {
  type    = string
  default = "asia-northeast1"
}

variable redis_version {
  type    = string
  default = "REDIS_4_0"
}

variable "authorized_network" {
  type = string
}
