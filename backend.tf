terraform {
  backend "s3" {
    bucket         = "dtpl-terraform-state"
    key            = "dtpl-githubactions-poc"
    region         = "eu-west-1"
    dynamodb_table = "dtpl-terraform-lock"
  }
}
