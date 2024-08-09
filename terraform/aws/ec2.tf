# Documentation https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#network-and-credit-specification-example

resource "aws_instance" "ec2-1" {
  ami           = "ami-005e54dee72cc1d00" # us-west-2
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
}
