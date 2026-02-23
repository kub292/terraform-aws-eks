terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.57"
    }
  }
  backend "s3" {
    bucket = "kub292-remote-state"
    key    = "expense-dev-eks"
    region = "us-east-1"
    dynamodb_table = "kun292-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}