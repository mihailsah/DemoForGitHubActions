terraform {
  backend "s3" {
    bucket         = "dtpl-terraform-state"
    key            = "dtpl-githubactions-poc"
    region         = "eu-west-1"
    role_arn       = "arn:aws:iam::423432601656:role/dtpl-terraform-state-role"
    dynamodb_table = "dtpl-terraform-lock"
  }
}
