resource "aws_instance" "ansible_master" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  user_data = "${file("ansible-master-setup.sh")}"

  security_groups = [ "${aws_security_group.ansible-master-sg.id}" ]

  tags = {
    Name = "AnsibleMaster"
  }
}
