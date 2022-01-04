resource "aws_instance" "ansible_node" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  user_data = file("ansible-node-setup.sh")

  security_groups = [ "${aws_security_group.ansible-node-sg.id}" ]

  tags = {
    Name = "AnsibleNode"
  }
}
