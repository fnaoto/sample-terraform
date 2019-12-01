output "arn" {
  value = "${aws_secretsmanager_secret.secrets.arn}"
}

output "name" {
  value = "${aws_secretsmanager_secret.secrets.name}"
}
