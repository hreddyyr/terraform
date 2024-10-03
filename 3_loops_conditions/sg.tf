resource "aws_security_group" "roboshop_all" {
  name        = var.sg_name
  description = "Allow inbound traffic"


  ingress {
    description = "sg for roboshop"
    from_port   = var.inbound
    to_port     = var.inbound
    protocol    = "tcp"
    cidr_blocks = var.cidr
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Roboshop_all"
  }
}