output "id" {
  value = aws_ssm_activation.ssm.id
}

output "code" {
  value = aws_ssm_activation.ssm.activation_code
}

output "role_name" {
  value = aws_iam_role.ssm.name
}

