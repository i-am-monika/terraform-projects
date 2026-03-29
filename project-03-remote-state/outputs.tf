output "instance_id" {
  description = "EC2 instance ID - state stored in S3 backend"
  value       = aws_instance.main.id
}

output "instance_state" {
  description = "EC2 instance state"
  value       = aws_instance.main.instance_state
}

output "backend_bucket" {
  description = "S3 bucket storing this state remotely"
  value       = "monika-terraform-state"
}

output "lock_table" {
  description = "DynamoDB table handling state locks"
  value       = "monika-terraform-lock"
}
