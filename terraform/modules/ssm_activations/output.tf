output "id" {
  value = "${aws_ssm_activation.activation.id}"
}

output "code" {
  value = "${aws_ssm_activation.activation.activation_code}"
}

output "role_name" {
  value = "${aws_iam_role.ssm.name}"
}
