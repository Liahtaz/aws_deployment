# Instructions copied from here: https://developer.hashicorp.com/terraform/language/settings/backends/s3

terraform {
  backend "s3" {
    bucket = "liahtaz-terraform"
    key    = "hello_world"
    region = "us-east-1"
  }
}
