resource "aws_instance" "ansible_master" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name

  tags = {
    Name = "AnsibleMaster"
  }
}
