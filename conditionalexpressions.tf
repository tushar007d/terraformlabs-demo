provider "aws" {
    region =  "us-east-1"
    access_key = ""
    secret_key = ""
}

variable "istest" {

}

resource "aws_instance" "instancetest" {
    ami = "ami-006dcf34c09e50022"
    instance_type = "t2.micro"
    count = var.istest == true ? 1 : 0
}

resource "aws_instance" "instanceprod" {
    ami = "ami-006dcf34c09e50022"
    instance_type = "t3.micro"
    count = var.istest == false ? 1 : 0
}