data "aws_ami" "myami" {
  most_recent = true
  owners = ["amazon"]
  filter{
    name = "name"
    values = ["amzn2-ami-hvm*"]
 }
}

resource "aws_instance" "test-ec2" {
ami = data.aws_ami.myami.id
instance_type = var.instance_type
  tags = {
    Name = "Instance-test"
  }
}
