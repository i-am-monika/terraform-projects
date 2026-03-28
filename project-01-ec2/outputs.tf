output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.my_ec2.id
}

output "instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.my_ec2.public_ip
}

output "instance_state" {
  description = "The state of the EC2 instance"
  value       = aws_instance.my_ec2.instance_state
}

output "aws_region" {
  description = "Region where instance is deployed"
  value       = var.aws_region
}