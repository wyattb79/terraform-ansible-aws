resource "aws_instance" "ansible_master" {
  ami = var.Ami
  instance_type = var.Instance_type
  key_name = var.Key_name

  tags = {
    Name = "AnsibleMaster"
  }
}
