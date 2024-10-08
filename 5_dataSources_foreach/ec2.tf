resource "aws_instance" "web" {
  for_each = var.ins_typs
  ami           = data.aws_ami.ami.id
  instance_type = each.value
  vpc_security_group_ids = [aws_security_group.roboshop_alll.id]

  tags = {
    Name = each.key
  }
} 