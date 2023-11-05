resource "aws_security_group" "allow_all" {
  name        = "allow_all_sg"
  description = "Allow all traffic"

  ingress {
    description      = "allowing all ports"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

    tags = {
      Name = "allow_all"
    }
} 