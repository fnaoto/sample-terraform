variable name {
  type = string
}

variable region {
  type    = string
  default = "asia-northeast1"
}

variable database_tier {
  type    = string
  default = "db-f1-micro"
}

variable availability_type {
  type    = string
  default = "REGIONAL"
}

variable database_name {
  type    = string
  default = "postgres"
}

variable database_password {
  type    = string
  default = "password"
}


variable database_version {
  type    = string
  default = "POSTGRES_12"
}

variable "authorized_networks_address" {
  type = string
}
