# Project 2 — Custom VPC with EC2

Built a complete AWS network from scratch using Terraform — VPC, subnet, internet gateway, route table, and security group — then launched an EC2 instance inside it.

## What I Built
- Custom VPC with CIDR block 10.0.0.0/16
- Public subnet in ap-south-1a
- Internet Gateway for public internet access
- Route table routing traffic to IGW
- Security group allowing SSH (22) and HTTP (80)
- EC2 instance deployed inside the VPC

## Tech Stack
Terraform · AWS VPC · EC2 · Networking · HCL

## Commands Used
terraform init → terraform plan → terraform apply → terraform destroy
