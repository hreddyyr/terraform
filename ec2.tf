resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop_all.id]

  tags = {
    Name = "Terraform world"
  }
} 


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