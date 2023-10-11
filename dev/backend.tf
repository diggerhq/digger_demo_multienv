terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "terraform-state-applinh"
    key    = "dev/terraform.tfstate"
  }
}

provider "aws" {
  region = "us-east-1"
}
