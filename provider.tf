#Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"  # This is the critical fix - specifies version 5.x
    }
  }
#       backend "s3" {
#     bucket = "terraform-jenkins-260425"
#     key    = "dev/terraform.tfstate"
#     region = "us-east-1"
#   }  
}

#Provider Block
provider "aws" {
  region  = "us-east-1"     # Specifies the AWS region to deploy resources (e.g., N. Virginia).
  #profile = "default"       # Uses the AWS credentials profile named "default" from your local AWS credentials file (~/.aws/credentials).
}
