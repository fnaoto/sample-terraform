resource "aws_secretsmanager_secret" "secrets" {
  name = var.name
}

resource "aws_secretsmanager_secret_version" "secrets" {
  secret_id     = aws_secretsmanager_secret.secrets.id
  secret_string = var.secret_string
}

