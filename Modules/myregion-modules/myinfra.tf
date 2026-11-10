data "aws_ami" "myami" {
  
  owners = ["amazon"]
  filter{
    name = "name"
    values = [var.aminame]
 }
}

variable "instancename" {
  type = string
}

resource "aws_instance" "test-ec2" {
ami = data.aws_ami.myami.id
instance_type = var.instancetype
  tags = {
    Name = var.instancename
  }
}

resource "aws_security_group" "mysg" {
  name        = "allow_tls"
ingress {
     from_port        = var.port
     to_port          = var.port
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }
  }


