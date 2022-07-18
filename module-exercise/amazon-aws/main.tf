resource "aws_instance" "amyzon" {
  ami             = var.amaamy_ami
  instance_type   = var.amy_type
  key_name        = var.amy_key_name
  security_groups = ["sg-0f50bcfed7eb0f7a2"]
  subnet_id       = var.amy_subnet_id
  tags = {
    Name = "${var.project_name}-vm"
  }

}
