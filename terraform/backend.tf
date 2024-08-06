terraform {
  backend "s3" {
    bucket = "liahtaz-terraform"
    key    = "hello_world"
    region = "us-east-1"
  }
}
