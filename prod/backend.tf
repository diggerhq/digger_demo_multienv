
terraform {
  backend "s3" {
    bucket  = "terraform-alt-exps"
    encrypt = true
    key     = "digger/multienv/prod/terraform.tfstate"
    region  = "us-east-2"
  }
}
