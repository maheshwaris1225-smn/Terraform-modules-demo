resource "aws_security_group" "mysg" {
  name        = "allow_tls"
ingress {
     from_port        = var.port
     to_port          = var.port
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }
  }

