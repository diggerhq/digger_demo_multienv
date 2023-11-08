terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.24.0"
    }
  }
    backend "s3" {
    bucket = "digger-s3backend-quickstart-aws"              # Change if a different S3 bucket name was used for the backend 
    /* Un-comment to use DynamoDB state locking
    dynamodb_table = "digger-locktable-quickstart-aws"      # Change if a different DynamoDB table name was used for backend
    */
    key    = "terraform/state"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "ap-south-1"  # Replace with your desired AWS region
}