variable name {
  type = string
}

variable machine_type {
  type    = string
  default = "g1-small"
}

variable zone {
  type    = string
  default = "asia-northeast1-a"
}

variable metadata_startup_script {
  type    = string
  default = <<EOF
      yum install -y nginx;
      service nginx start;
EOF
}

variable boot_disk_image {
  type    = string
  default = "centos-cloud/centos-7"
}

variable region {
  type    = string
  default = "asia-northeast1"
}

variable "subnetwork" {
  type = string
}

variable "tags" {
  type = list(string)
}
