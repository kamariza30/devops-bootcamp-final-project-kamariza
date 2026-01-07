data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "web_server_public_ip" {
  value = aws_instance.web_server.public_ip
}
output "ansible_server_private_ip" {
  value = aws_instance.ansible_server.private_ip
}
output "monitoring_server_private_ip" {
  value = aws_instance.monitoring_server.private_ip
}

output "WEB_INSTANCE_ID" {
  value = aws_instance.web_server.id
}
output "ANSIBLE_CONTROLLER_INSTANCE_ID" {
  value = aws_instance.ansible_server.id
}

output "ECR_REGISTRY" {
  value = "${data.aws_caller_identity.current.account_id}.dkr.ecr.${var.aws_region}.amazonaws.com"
}

output "ECR_REPOSITORY" {
  value = aws_ecr_repository.final_project.name
}
