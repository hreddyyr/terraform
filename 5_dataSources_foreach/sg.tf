resource "aws_security_group" "roboshop_alll" {
  name        = var.sg_name
  description = "Allow inbound traffic"


  dynamic ingress {
    for_each = var.sec_ports
    content {
      description = ingress.value["description"]
      from_port   = ingress.value["from_port"]
      to_port     = ingress.value["to_port"]
      protocol    = ingress.value["protocol"]
      cidr_blocks = ingress.value["cidr_blocks"] 
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Roboshop_alll"
  }
}