terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.7.0"
}

provider "aws" {
  region                      = var.aws_region
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3       = "http://localhost:4566"
    dynamodb = "http://localhost:4566"
    ec2      = "http://localhost:4566"
  }
}

# EC2 instance - state stored remotely in S3
resource "aws_instance" "main" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name      = "monika-remote-state-ec2"
    ManagedBy = "terraform"
  }
}
