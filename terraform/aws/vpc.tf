# Documentation https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc#example-usage

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}
