# Instructions copied from here: https://developer.hashicorp.com/terraform/language/settings/backends/s3

terraform {
  backend "s3" {
    bucket = "liahtaz-terraform"
    key    = "aws.json"
    region = "us-east-1"
  }
}
