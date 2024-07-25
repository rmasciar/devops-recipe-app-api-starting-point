terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket         = "devops-recipe-app-tf-state-55"
    key            = "tf-state-setup"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "devops-recipe-app-api-tf-state-lock"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Contact     = var.contact
      ManagedBy   = "Terraform/setup"
    }
  }
}