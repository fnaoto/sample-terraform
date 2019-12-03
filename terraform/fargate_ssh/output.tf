output "ecr_url" {
  value = "${module.ecr_ssh.repository_url}"
}

output "activations_code" {
  value = "${module.secret_activations_code.arn}"
}

output "activations_id" {
  value = "${module.secret_activations_id.arn}"
}

output "aws_region" {
  value = "${var.region}"
}
