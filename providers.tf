terraform {
  required_version = ">=1.0.11"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
  assume_role {
    role_arn     = "arn:aws:iam::${lookup(var.account_map, local.environment)}:role/dtpl-ci"
    session_name = "dtpl-ci-terraform"
  }
}