output "ecr_url" {
  value = module.ecr_ssh.repository_url
}

output "activations_code" {
  value = module.ssm_activations.code
}

output "activations_id" {
  value = module.ssm_activations.id
}

