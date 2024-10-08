data "aws_ami" "ami" {
    owners = ["137112412989"]
    most_recent = true
    filter {
      name = "name"
      values = ["al2023-ami-2023.5.20240916.0-kernel-6.1-x86_64"]
    }

    filter {
      name = "root-device-type"
        values = ["ebs"]
    }
}

data "aws_instances" "get_info" {
    for_each = var.ins_typs
    instance_tags = {
        Name = each.key
    }

    filter {
      name = "instance.group-name"
      values = ["Roboshop_alll"] 
      }

    instance_state_names = ["running"]
}