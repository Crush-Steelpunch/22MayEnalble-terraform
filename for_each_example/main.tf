provider "aws" {
  region = "eu-west-2"
}


variable "imagemap" {
  default = { 0 = "ami-078a289ddf4b09ae0"
  1 = "ami-0bd2099338bc55e6d" }
}


resource "aws_instance" "my_instance" {
  for_each = var.imagemap
  ami      = each.value
  instance_type     = "t2.micro"
  timeouts {
	create = "20m"
        delete = "4h"
}
  ignore_change = true
  tags = {
    Name = "my_instance"
  }

}
