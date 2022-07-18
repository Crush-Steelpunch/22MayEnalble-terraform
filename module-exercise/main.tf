provider "aws" {
  region = "eu-west-2"
}

module "ubuntu" {
  source          = "./ubuntu-aws"
  ubuntu_ami      = "ami-0bd2099338bc55e6d"
  ubuntu_type     = "t2.micro"
  project_name    = var.project_name
  ubuntu_key_name = var.aws_key_name
}

module "amazon" {
  source        = "./amazon-aws"
  amaamy_ami    = "ami-078a289ddf4b09ae0"
  amy_type      = "t2.nano"
  amy_subnet_id = "subnet-0b7e42b71374219e0"
  amy_key_name  = var.aws_key_name
  project_name  = var.project_name
}
