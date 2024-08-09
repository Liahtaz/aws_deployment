# Documentation https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#spot-instance-example

data "aws_ami" "this" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "architecture"
    values = ["arm64"]
  }
  filter {
    name   = "name"
    values = ["al2023-ami-2023*"]
  }
}

resource "aws_instance" "ec2-1" {
  ami = data.aws_ami.this.id
  instance_type = "t4g.nano"
  subnet_id     = aws_subnet.public.id
  tags = {
    Name = "ec2-1-spot"
  }
}

resource "aws_instance" "ec2-2" {
  ami = data.aws_ami.this.id
  instance_type = "t4g.nano"
  subnet_id     = aws_subnet.private.id
  tags = {
    Name = "ec2-2-spot"
  }
}
