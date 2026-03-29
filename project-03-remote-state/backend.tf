terraform {
  backend "s3" {
    bucket         = "monika-terraform-state"
    key            = "project-03/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "monika-terraform-lock"
    encrypt        = true

    endpoints = {
      s3       = "http://localhost:4566"
      dynamodb = "http://localhost:4566"
    }

    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true
    use_path_style              = true
  }
}