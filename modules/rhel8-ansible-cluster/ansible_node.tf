resource "aws_instance" "ansible_node" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  user_data = file("ansible-node-setup.sh")

  vpc_security_group_ids = [ "${aws_security_group.ansible-node-sg.id}" ]

  tags = {
    Name = "AnsibleNode"
  }
}
