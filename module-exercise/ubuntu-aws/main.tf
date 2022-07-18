resource "aws_instance" "thebunt" {
  ami             = var.ubuntu_ami
  instance_type   = var.ubuntu_type
  key_name        = var.ubuntu_key_name
  security_groups = ["allow-ssh", "default"]
  tags = {
    Name = "${var.project_name}-vm"
  }

}
