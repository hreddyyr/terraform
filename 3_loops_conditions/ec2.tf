resource "aws_instance" "web" {
  count = 11
  ami           = var.ami
  instance_type = var.instance_names[count.index] == "mongodb" ? "t3.small" : "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop_all.id]

  tags = {
    Name = var.instance_names[count.index]
  }
} 