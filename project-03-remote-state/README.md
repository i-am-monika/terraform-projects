# Project 3 — Remote State with S3 + DynamoDB

Configured Terraform remote backend using S3 for state storage and DynamoDB for state locking — directly backing the IaC claims on my resume.

## What I Built
- S3 bucket as remote Terraform state backend
- DynamoDB table for state locking (prevents concurrent applies)
- EC2 instance managed with remote state
- backend.tf configured with S3 endpoint and encryption

## Why This Matters
Without remote state, tfstate lives locally — meaning teammates can't collaborate and state can get lost. S3 + DynamoDB is the production standard for team Terraform workflows.

## Tech Stack
Terraform · AWS S3 · DynamoDB · EC2 · HCL

## Commands Used
terraform init → terraform plan → terraform apply → terraform destroy
