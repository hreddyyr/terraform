resource "aws_instance" "web" {
  #count = 11
  count = length(var.instance_names)
  ami           = var.ami
  instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "my_sql" || var.instance_names[count.index] == "shipping" ? "t3.small" : "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop_all.id]

  tags = {
    Name = var.instance_names[count.index]
  }
} 