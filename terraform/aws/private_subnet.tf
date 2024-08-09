# Documentation https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet#example-usage

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "private"
  }
}
