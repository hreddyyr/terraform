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
