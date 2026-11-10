data "aws_ami" "myami" {
  
  owners = ["amazon"]
  filter{
    name = "name"
    values = [var.aminame]
 }
}

resource "aws_instance" "test-ec2" {
ami = data.aws_ami.myami.id
instance_type = var.instancetype
  tags = {
    Name = var.instancename
  }
}
