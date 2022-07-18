provider "aws" {
  region = "eu-west-2"
}

// Input Variables

variable "name-prefix" {
  type        = string
  default     = "terraform"
  description = "prefix for instance name"
}

// Local Variables

locals {
  //imageid = "ami-0bd2099338bc55e6d"  
  imageid      = "ami-078a289ddf4b09ae0"
  instanceType = "t2.micro"
}


resource "aws_instance" "testinstance1" {
  ami           = local.imageid
  instance_type = local.instanceType
  tags = {
    Name = "${var.name-prefix}-Web"
  }
}

resource "aws_instance" "testinstance2" {
  ami           = local.imageid
  instance_type = local.instanceType
  tags = {
    Name = "${var.name-prefix}-Database"
  }
}

resource "aws_instance" "testinstance3" {
  ami           = local.imageid
  instance_type = local.instanceType
}

