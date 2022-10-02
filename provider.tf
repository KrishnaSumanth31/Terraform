provider "aws" {
  profile = "terraform"
  region  = "us-east-1"
}

#Optional Setting we can give
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.21"
    }
  }
}