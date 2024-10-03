resource "aws_instance" "web" {
  #count = 11
  count = length(var.instance_names)
  ami           = var.ami
  instance_type = local.ins_type

  tags = {
    Name = var.instance_names[count.index]
  }
} 