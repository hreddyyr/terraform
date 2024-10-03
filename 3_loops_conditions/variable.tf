variable "sg_name" {
    type = string
    default = "roboshop_all"
}

variable "inbound" {
    default = 0
}

variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "tags" {
    type = map
    default = {
        Name = "terraform_instance"
        Manual = "No"
        Terraform = "yes"
    }
}

variable "ami" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_names" {
    type = list
    default = ["Web","mongodb","catlogue","my_sql","user","cart","redish","rabbit_mq","shipping","Payment","dispatch"]
}

