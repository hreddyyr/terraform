locals {

     ins_type = var.prod ? "t2.micro" : "t3.small"
#    ins_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "my_sql" || var.instance_names[count.index] == "shipping" ? "t3.small" : "t2.micro"

}

