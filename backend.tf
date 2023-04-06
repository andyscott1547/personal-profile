# backend

terraform {
  backend "s3" {
    bucket         = "502101718834-eu-west-1-tf-state"
    key            = "pegasus-technology"
    region         = "eu-west-1"
    dynamodb_table = "502101718834-eu-west-1-tf-state"
  }
}
